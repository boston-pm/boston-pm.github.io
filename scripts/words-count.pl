#! perl -lw
# prep aid to solving Chu-Carrol's cryptogram statistically


=pod

=head1 aid to solving cryptograms statistically

I was annoyed that a mathematician's introduction to Crytanalysis 

http://scienceblogs.com/goodmath/2008/08/introducing_cryptanalysis.php

was in the worked example largely wordsmithing and inadequately statistical. 
While the crypto puzzle fans have tools that run on MSWindows, I don't by choice. So I hacked together the following. I added Getopt to suppress later enhancements by default for presenting this code to Boston.PM.

This script does word counts only, to see the common words.


=head2 Options and args

=over 4
            --file=filename         analyze a different example
            --verbose
            --dump                  just print the cryptogram and exit

=back


=cut

use warnings;
use strict;

use List::Util qw/max/;
use Getopt::Long;
my ($verbose,  $file,  $dump,);
GetOptions(
           "file=s"  => \$file,       # solve a different example
           "verbose" => \$verbose,    # flag
           "dump"    => \$dump,    # flag
          );



=head2 convention

since lower case is easier to read as natural language and upper case is easier to see non-liguistic patterns, it is conventional to write the enciphered text in upper case, eg WSSHU FDVH and clear text in all hower case as in this paragraph. (in  military circles, red pencil or ink is used for cleartext, if only to ensure worksheets with clear is burned.)


=cut



# printf "%s=>'%s', ",$_,$Xlate{$_} for sort keys %Xlate ;




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


if ($dump){
    print $all;
    exit;
}



my %Count;    # used repeatedly








    my @Words = split /[\W]/, $all;
    $Count{$_}++ for @Words;



    my $n=30;
    my $seen=0;

    # _score is length * count, except 20*count if length==1
    # because the words A, I, and plural 'S are very important
    sub _score {my $w = shift; 
                return $Count{$w}*(1==length($w) ? 20 : length($w)); };

    for my $w (
        sort { +1 * ( _score($b) <=> _score($a) ) }
        grep {
            /\w/

              #  ... and $Count{$_}>1
        } keys %Count
      )
    {
        

        print sprintf("%-12s\t%3s\t%3s", 'word', 'Count', 'length' )
            unless $seen++;
        print sprintf("%-12s\t%3d\t%3d", $w, $Count{$w}, length($w) );



        last if $n-- == 0;
    }










=head2 cryptogram

=cut

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

