#! perl -lw
# aid to solving Chu-Carrol's cryptogram statistically

=pod

=head1 aid to solving cryptograms statistically

I was annoyed that a mathematician's introduction to Crytanalysis 

http://scienceblogs.com/goodmath/2008/08/introducing_cryptanalysis.php

was in the worked example largely wordsmithing and inadequately statistical. 
While the crypto puzzle fans have tools that run on MSWindows, I don't by choice. So I hacked together the following. I added Getopt to suppress later enhancements by default for presenting this code to Boston.PM.




=head2 Options and args

=over 4

=item XaYbZc --  guess cipher X represents cheartext 'a' etc.

=item -X  -- adds a table of digraph or contact frequency

=item -file=filename -- solve a different cryptogram

=item -verbose

May not be used, most if not all debug is #'d instead.

=item -W  -- list words partly solved with unique or few dictionary matches.

=back

=head2 Limitations

This is for B<Simple Substitution> which no one uses but simpleton schoolboys and pedantic scholars like us. The C<-W> words option as coded requires word breaks, and the C<-X> pairs table option has most value if neither word breaks nor doubled letters are suppressed. This serves as a simple demonstration as to why the final generations of professional pencil and paper codes and ciphers required obscuring punctuation, word breaks, Capitalization, and doubled letters, all of which would be restored on a best effort basis by the decipering code clerk using common sense and the intrinsic redundancy of natural language.

=cut


use warnings;
use strict;

use List::Util qw/max/;
  use Getopt::Long;
  my ($verbose,$pairs,$file,$words,$cheat,);
  GetOptions (		"X" => \$pairs,		# digraph or contact frequency
                       	"file=s"   => \$file,   # solve a different example 
			"verbose"  => \$verbose,  # flag
			"W"  =>  \$words,       # highlight words indicated
			"xyzzy" => \$cheat,     # you wouldn't !!
		);


=head2 shape dictionary %WordsByShape and  ordercannon()

Cryptographers classify words by positions of same or different letters. 
Words "the" and "car" are both of type 123, since no letter is reused, while "aardvark" is 11234125.  The ordercannon() function allows for words more than 9 unique letters, so it interpolates dots to distinguish .1.1. from .11. .  The %WordsByShape hash indexes words in a dictionary by these ordercannon() strings and holds array of matching words.  So

C< '1.2.2.3.4' => [ 'upper', ...] >

as would  C<$WordsByShape{  ordercannon('HCCRE')  } # rot13 >

This scheme is amenable to optimization. This isn't, except the dictionary is only built when it will be used (-W).

=cut


my %WordsByShape;

if ($words) {  
  my $fn = q(/usr/share/dict/words);
  my $dict ;
  open $dict, $fn or die $!;
  while (<$dict>) {
    chomp;
    next if /\W|[A-Z]/; # skip compounds and Proper
    push @{$WordsByShape{ordercannon($_)}},$_;
  }

 #use Data::Dumper;
 #print Dumper(%WordsByShape);
 #exit
}

=head2 %Xlate and  convention; show guesses in normal form

since lower case is easier to read as natural language and upper case is easier to see non-liguistic patterns, it is conventional to write the enciphered text in upper case, eg WSSHU FDVH and clear text in all hower case as in this paragraph. (in  military circles, red pencil or ink is used for cleartext, if only to ensure worksheets with clear is burned.)

Hash %Xlate is keyed by single uppercase cipher letters with values as the matching lower case cleartext letter.

The current hash is printed CRYPT over / clear under in both XYZ and abc orders at the top of the output. $XYZ and $abc are lists of the solved letters, in similar sequence. $XYZ2, $abc2 are likewise, but the other sequence.  Then print the un-matched letters.

=cut


my %Xlate = split //, shift @ARGV;

if ($cheat) {
 @Xlate{split //,   "XVCTYHKQMZLGBUJI"  } 
	= (split //, scalar reverse "rhsiaoefbwtgydum");

}
# printf "%s=>'%s', ",$_,$Xlate{$_} for sort keys %Xlate ;
       my($XYZ,$abc)=((join q{},
                                sort {$Xlate{$a} cmp $Xlate{$b}} 
					keys  %Xlate ),
                      (join q{}, 
                         @Xlate{ sort {$Xlate{$a} cmp $Xlate{$b}} 
					keys %Xlate } )
                         ) ;
       my($XYZ2,$abc2)=((join q{},
                                sort
				  keys  %Xlate ),
                      (join q{}, 
                         @Xlate{ sort 
				 keys %Xlate } )
                         ) ;


printf "\n  %s\t%s =>\n=>%s\t%s \n",$XYZ, $XYZ2, $abc,$abc2;

my $alphabet = join q{}, 'a'..'z';
my $ALPHABET = join q{}, 'A'..'Z';

if (keys %Xlate) {
	$alphabet =~ s/ @{[ q{[} . join( q{}, values %Xlate ) . q{]} ]} //xg;
	$ALPHABET =~ s/ @{[ q{[} . join( q{},  keys  %Xlate ) . q{]} ]} //xg;
	print "\n unsolved: $ALPHABET; not found: $alphabet \n ";
}

=head2 load...

The Chu-Carroll cryptogram is appended to the source so read from data.

=cut


# slurp ... must be in {} or after dict load

my $all = do { local $/; <DATA>; };

if (@ARGV)
{
   local $/;
   $all = <>;
}

# enforce convention
$all =~ y/a-z/A-Z/;

# print $all;  # -- will do this later


my %Count; # used repeatedly


=head2 wordsLike() and -W

if -W is specified, any words that are sufficiently deciphered that the unmatched clear letters and ordercannon() find only one or a handful in the dictionary, they are output next.

If there a lot of strange, useless words suggested and others with no matches it's a hint that some of the guessed letters are wrong.  Try 

=over 8

=item B< C<-W Ui> >

=back

to see this.

=cut


sub wordsLike
{
    my $partial=shift;
    my $cannon=ordercannon($partial);
    # print "$partial => $cannon";

    $partial=~ s/[A-Z]/./g  if !$abc;;
    $partial=~ s/[A-Z]/[^$abc]/g if $abc;  ## letters not yet matched
    # print "$partial => $cannon";
    
    local $"=q(,);
    my @W = @{$WordsByShape{$cannon} ||[] };
    # print "<<@W>>";

    @W = grep /^$partial$/i, @W;
    
    if ($partial =~ s/s$/s?/)
      {
     $cannon =~ s/\d+[.]$// ;
      # plurals is optional

      push @W,$_ 
         for grep /^$partial$/i,@{$WordsByShape{$cannon }};
        # unshift @W, $partial;
        #unshift  @W, $cannon;
       }
    # print "<<<@W>>>";
    # unshift %Xlate@W, $partial;
    #unshift  @W, $cannon;
    return wantarray ? @W : "@W";
}


if ($words) {
print "\n -W : show candidate words";

my @Words = split /[\W]/,$all;
my $n=10;
$Count{$_}++ for @Words;
for my $w (sort {+1 *  ($Count{$b} <=> $Count{$a})  } 
           grep {/\w/    
                    #  ... and $Count{$_}>1
                } keys %Count
            )
    {
    my $tmp = $w;
    eval "\$tmp =~ tr/$XYZ/$abc/";
       die $@ if $@;
    next unless $tmp =~ /[A-Z]/;  ## still in play? ignore solved
    next unless $tmp =~ /[a-z]/  ## any info?
		or length($tmp) <= 2; # or trivial
   my @W = wordsLike($tmp);
   next if @W > 30;

     local  $" = q',' ;

  printf "%12s '%12s' %-6d : %-40s\n",
    $w,
    $tmp,
    $Count{$w},
    $tmp=~/[A-Z]/ ? substr("@W",0,40) : "" ;

    last if $n-- == 0;
    }
}

=head2 Simple frequency counts

The frequency in decreasing order should approximate

   ETAOIN SHRDLU

which are famous as columns one and two on the Linotype(tm) keyboard.
But note *approximately*.
And this and other statistical comments assume a cleartext in unstilted English.

=cut

%Count =();

my @Letters = split //,$all;
$Count{$_}++ for @Letters;
my $cut = 0; # (max values %Count)/5;  # no cut if wrapping

my $i=0;
printf "%s%s %s %-3d",
      ($i++%8 ? ' ' : "\n " ),
      $_,
      $Xlate{$_}||q{ },
      $Count{$_},
  for sort {1*($Count{$b} <=> $Count{$a})}
     grep {/\w/ and $Count{$_}>$cut} keys %Count;
printf "\n";

=head2 -X Digraph or pairs or 'contact' frequency table 

First letters of pairs are down the left; second letters are along the top. 
Guessed cheartext as usual is lower case and makes a broken copy of the edge keys.

Zero counts are suppressed for clarity. Zeroes on the main Diagonal are plotted as '/'. Double letters in the ciphertext have a number on the main diagonal, so look for gaps in the line of /s for the telltale doubles.

Pairs like '_X' and 'X_' are cipher X as respectively first letter (follows a space or other nonword) and last letter of a word (precedes a space or punctuation).  Clear 't' should be popular both as '_t' and 't_' and 'th' but not 'ht'. Initial '_e' is less common than terminal 'e_'. Both 'tt' and 'ee' may occur.

=cut

%Count =();
my $temp=" $all ";

if ($pairs){
 print "\n-X Digraph or pairs or 'contact' frequency table";
$temp=~  tr/A-Z/_/cs;
# print $temp;
# print length($temp);
$Count{$_}++ for ($temp =~    m/(..)/g);
$temp =~ s/^.//;
$Count{$_}++ for ( $temp =~ m/(..)/g);
my $nn; $nn += $Count{$_} for keys %Count;
# print $nn;
my @L = ('_', 'A'..'Z');
print 'v> ',join('  ',@L);
print '   ',join('  ',map {$Xlate{$_}||q[ ]} @L);
for my $c (@L) {
	printf "%s%s|",$c, ($Xlate{$c}||q[ ]);
	printf "%2s ", ( $Count{"$c$_"}
                                ? (($Count{"$c$_"} > 99) ? '**' : $Count{"$c$_"} ) 
				: ($c eq $_ ? q{ \\}: q{  }) )
			for @L;
	printf "\n";
}
printf "\n";
}

#      ($i++%8 ? ' ' : "\n " ),	
#      $_,
#      '' , # $Xlate{$_}||q{ },
#      $Count{$_},
#  for sort # {-1*($Count{$b} <=> $Count{$a})}
#     grep {/\w/ and $Count{$_}>$cut} keys %Count;
printf "\n";



eval " tr/$XYZ/$abc/ " for ($all);
    die $@ if $@;

if (0 && $cheat) {
 $all =~ y(HZLGBUJIPFXVCTYKQDMW)
         (teoaishrncmudygwbpfk);
}
print $all;

sub ordercannon {
  my $w = shift;
  my (%C, $n);
  $w =~ s/(\w)/($C{$1} ||= ++$n) . '.'/ge; # BobR

#    my $i = 1;
#       $i += !! ( $w =~ s/$_/$i./g ) 
#                for (split //, $w);
         $w;
         }
__END__
b czfbczc bh bu gqlvh hbxz hl uhgih vd xt lkp qrly. lpz hjbpy hjgh b jgaz
plhbfzc bp xt hbxz qilkubpy hjz qrlyludjziz bu hjgh hjziz giz g kjlrz
rlh lm hziibmbf ufbzpfz qrlyu lvh hjziz: ligf, djgitpyvrg, gzhblrlyt,
evuh hl pgxz g mzk. qvh hjziz bu plh pzgirt ul xvfj lvh hjziz czcbfghzc
hl xghj - gpc bp dgihbfvrgi hl hjz xbuvuz lm xghj. b hjbpw hjgh hjgh bu
g cgxp ujgxz, qzfgvuz bp xt zodzibzpfz, lpz lm hjz xluh frzgi kgtu lm
bczphbmtbpy g figfwdlh bu hjilvyj xghj. pl xghhzi hjz udzfbmbf uvqezfh,
hjz figfwdlhu grkgtu zbhjzi galbc li ufizk vd hjz xghj. kjzhjzi bh'u
hjz "xzifvit fgvuzu gvhbux" mlrwu, hjz azrbwlauwbgpu, fizghblpbuhu,
grh-xzcbfbpz svgfwu, izdvqrbfgp dlrruhziu, li ufbzphlrlybuhu - tlv fgp
grkgtu izflypbnz hjz figfwdlhu qt hjzbi xghj. ul b gx ylbpy hl cl xt
qzuh hl dilabcz g albfz lm xghjzxghbfgr ugpbht - qlhj qt
ujlkbpy kjgh'u kilpy kbhj hjz qgc xghj urld dvxdzc lvh qt hjz rllpbzu,
gpc qt ujlkbpy jlk yllc xghj kliwu.

