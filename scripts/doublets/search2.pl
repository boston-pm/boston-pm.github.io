#! perl -wl
# args word word dict
# Dodgsonian doublets
#

use MyCanon;
use strict;
# use vars qw[ $debug ]; ## Globals;
use Getopt::Long;
INIT {
  our $is_reversed;
  our $limit=20;
  our $debug=$ENV{DEBUG}||0;
  our $trace;


  unless (GetOptions("--reversed" => \$is_reversed,
		     "--limit=i"  => \$limit,
		     "--debug"    => \$debug,
		     "--trace"    => \$trace,
		     ))
      {
	  die "flags --reversed --limit=$limit --debug";
      }


  
  my $word1=shift @ARGV;
  my $word2=shift @ARGV;
  our @Queue;


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

  }
  my %Stop= map { $_ => 1 } @Stops;
  
  our @Words=grep {chomp; 
                   length == $n 
                   and ! $Stop{$_} 
	               } <>;
  warn "read @{[scalar @Words]} words";
}

####################################


# From init
our ($start,$target,  @Queue,  @Words);
our ($is_reversed,$debug,$limit,$trace); # Flags


# Used here
our (%Predicessor);


sub pop_word;

sub pop_word {
    print "POP OUT" and return if @Queue < 1; # recursion ends when done

    my $word=pop @{$Queue[-1]->{next}};
    print "popping ", $word||'*NULL*' if $debug>3;

    if (defined $word and $word) 
    {
	push @{$Queue[-1]->{seen}},$word; # remember it
    }
    else 
    {
	print "no word for ",$Queue[-1]->{word},"\n" if $debug > 3;
	pop @Queue;
	return;
    } 
    return $word;
}

sub report {
    my ($first, $last)=@_;

    join( ' ',
	  $first, 
	   join( '=>', 
		 map( {  $_->{word} } @Queue)
		 ),

	   $last
	   );
}

sub level_n {
    my $n = shift;
    join (' ',
	  $Queue[$n]->{word},
	  '=>[',
	  @{$Queue[$n]->{next}},
	  '|',
	  @{$Queue[$n]->{seen}},
	  "]"
	  );
       }

sub dumpit {
    if ($debug>2) 
    {
	print for  map { level_n $_ } 0..$#Queue;
    print "===========================\n";
    }
    else 
    {
        my $n=$#Queue;
	print q{ }x$n, $n, ' ', level_n($n);
    }

}


sub seen {
    my $x=shift;
    for my $y (map { ( $_->{word}, 
                       @{$_->{next}}, 
			 @{$_->{seen}}
		         )} 
		                 @Queue )
    {
	return 1 if $x eq $y;
    }
    return;
}


sub adjacents {
    my $word=shift;
    my $pat=adjacent_pattern($word);
    my @next=
	grep {
	    /$pat/ 
		and ! seen($_) 
	    } @Words;
    # print "adjacent($word)= /$pat/ [@next]" if $debug;
    return @next;
}


sub push_word {
    our $is_reversed;
    my $word=shift;
    return if @Queue >= $limit;
    print "# push($word)" if $debug > 2;
    push @Queue,
       { word=>$word,
          next=>[ $is_reversed ? reverse adjacents($word) : adjacents($word)],
	  seen=> [],
        };

}

push_word($start);



warn report('[plan:', "==> $target ]");

dumpit() if $debug;

local $|=1;

while (@Queue)
{
   printf "\015%5d %s", scalar @Queue, report('[',']')
       if $trace;

   my $word=pop_word();
   
   print("# word=@{[$word||q{}]}") if $debug>2;

					      # level_n($#Queue);

    if ($word and $word eq $target)
    {
	print " => $target  ** FOUND ** "             if $trace;
	print report("\n*Found*", "=>$target\n" ) unless $trace;
    }
    elsif($word)
    {
	# next if seen($word);
	push_word($word); # recurse depth first
	# report('[',']');
    }
    # else, we popped a bracket, continue

   dumpit() if $debug;


      
}

