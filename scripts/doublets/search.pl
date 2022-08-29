#! perl -wl
# args word word dict
# Dodgsonian doublets
#

use MyCanon;
use strict;

INIT {
  our $is_reversed;
  while($ARGV[0] =~ /^-/) {
      my $opt=shift @ARGV;
      $is_reversed=1 if $opt eq q{-r} ;
  }


  my $word1=shift @ARGV;
  my $word2=shift @ARGV;
  our @Queue;
  our %Seen;
  our $start=$word1;
  our $target=$word2;
  my $n= length $word1;
  die "Not same length $word1 $word2"
	unless length($word1)==length($word2);


  my @Stops;
  if (-r 'stopwords.txt') {
      my $stop;
      open $stop, '<', 'stopwords.txt' or die 'stopwords.txt failed';
      @Stops= map {chomp; $_} <$stop>;
   #   print "STOP: '$_'" for @Stops; exit;
  }
  my %Stop= map { $_ => 1 } @Stops;
  
  our @Words=grep {chomp; 
                   length == $n 
                   and ! $Stop{$_} 
	               } <>;
  warn "read @{[scalar @Words]} words";
}

# From init
our ($start,$target,@Queue,  @Words);
our $is_reversed;

# Used here
our (%Seen,%Predicessor);


push @Queue, $target; # work backwards

while (my $word=shift @Queue){
	next if $Seen{$word};
	$Seen{$word}++;
	my $pat=adjacent_pattern($word);
	my @Neighbors=grep {/$pat/} @Words;
	push (@{$Predicessor{$_}}, $word) for @Neighbors;

	if (0) {
	   print "Q: @Queue";
	   print "W: $word => @Neighbors";
	   print "";
	  } 

	last if grep {/$start/} @Neighbors;
	push @Queue, $_ for grep {!$Seen{$_}}
	         $is_reversed ?  reverse @Neighbors
	                      : @Neighbors;

}

if ($Predicessor{$target}) {
  @Queue=($start);
  %Seen=();
  while (my $word=shift @Queue) {
	next if $Seen{$word}++;
	my @Next=grep {! $Seen{$_}} @{$Predicessor{$word}};
  	print "$word => @{[sort @Next]} " if @Next, ;
	last if grep {/$target/} @Next;
	push @Queue, $_ for @Next;

	}
  print $target;
  }
else {
  print "*** NO ***";
  }
