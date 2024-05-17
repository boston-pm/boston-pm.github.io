#! perl

require v5.10.0;
use strict;

our %Tests;
BEGIN{ # initialize early so Test More can see count
 %Tests = (
	"counterfeiters" 	=>"ABCDEFGHFIEFGJ", 
	"environmental"		=>"ABCDEFBGABHIJ",
	"environ-mental"	=>"ABCDEFBGABHIJ",
	);
}
sub patternword;
	
my $debug=0; 
if ($debug){
#	use Test::More tests=> scalar(keys(%Tests));
#	while (my($k,$v)=each(%Tests)){is(patternword($k),$v);}
}

sub patternword { 
	my $w= shift; # word
	# my $A= split '',$w; # comb in p6
	# my %pos = map {($A[$_] => $_)} 0..$
	warn "<$w\n" if $debug;
	$w =~ tr/a-zA-Z//cd; # alpha only. 
	warn ">$w\n" if $debug;
	# dedup
	my $letters = lc $w; 
	warn ">$letters\n"  if $debug;
	1 while $letters =~ s/(.).*\K\1//g;
	warn ">$letters\n"  if $debug;
	
	 eval " tr/$letters/A-Z/, 1" for $w;
	 die "$@ : tr/$letters/A-Z/" if $@; # exception to eval rule ! 
	warn "=>$w\n"  if $debug;
	 return $w;
	}

my (	$duckword, $n);

if ('--find' eq $ARGV[0])
{
	shift;
	$duckword=patternword(lc shift);
	$n=length($duckword);
	warn "searching for $duckword $n\n";
}
	
	return if $debug;
	
while (<>) {
	chop while /\s$/; # tolerate DOS, UNIX, MAC anywhere
	next if /^\s*#/; # skip comments
	next unless ! defined $n or $n == length;
	my $pw=patternword($_);
	
	print "$.\t$_\n" if defined $duckword and $pw  eq $duckword;
	printf  "%s\t%s\n%s\t%s\n",
		lc $_, $pw, # LC so alphabetizes at plaintext
		   $pw, $_   # leave propernouns uppercase when column 2
		unless defined $duckword; 
} continue {
	close ARGV if eof; # Not eof()!
}
