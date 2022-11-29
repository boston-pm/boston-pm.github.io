#! perl
# Decode a telegram sent by Pres.A.Lincoln
# The settings included here were in effect on the day
# of telegram, but other settings and possibly different 
# instructions on other days
# a full-purpose program would need to load a full set 
# of 'current' settings 

# Demonstration based upon
# “Anatomy of a Cipher” Daniel W. Stowell
# https://web.archive.org/web/20160628222057/http://www.c3teachers.org/wp-content/uploads/2016/01/Anatomy-of-a-Cipher.pdf
# ref. from 
# Smithsonian/Zooniverse/ Huntington Library Citizen science initiative
# Decoding the Civil War
# to transcribe Lincoln's war telegrams
# http://www.smithsonianmag.com/smart-news/you-can-help-decode-thousands-top-secret-civil-war-telegrams-180959561/
# https://www.zooniverse.org/projects/zooniverse/decoding-the-civil-war
# https://www.zooniverse.org/projects/zooniverse/decoding-the-civil-war/about/education
# https://blog.decodingthecivilwar.org/
# https://web.archive.org/web/20160628222057/http://www.c3teachers.org/wp-content/uploads/2016/01/Anatomy-of-a-Cipher.pdf
# See also 
# https://archive.org/search.php?query=Plum%2C%20William%20Rattle
# The Military Telegraph during the Civil War in the United States

use 5.022;
use warnings;
use strict;
use List::MoreUtils qw{part none };
use List::Util qw{sum};
use feature 'postderef'; #5.020; 
no warnings 'experimental::postderef';
 use feature 'signatures' ; #5.020; 
no warnings 'experimental::signatures';

# set up
my %BlindVal=_blinds();
my %Arbitraries=_abitraries();

# load 
sub title($l)
{ state $i=0; $i++; say "\n-------\n[$i. $l]\n"; ; 
}

title 'transcribe as received';

my @words;
while(<DATA>){
   chomp;
  say $_; 
  push @words,$_ for split /\s+/;
}

title 'just words';
say join q( ), @words;

# Remove blinds
title 'remove and interpret Commencement Blinds';
my @blinds;
push @blinds, uc(shift @words) for 1..3;
say join q( ),  @blinds;
my @n=@BlindVal{@blinds};
say join q( ), @n;
my $cols=shift @n;
my $lines=sum @n;
say "$cols columns; @n rows = ", $lines ;
my @route   = _route($blinds[0],'enc');
my @unroute = _route($blinds[0],'dec');
say '  ROUTE: ',join q/ /,map sprintf('%3d',$_),@route;
say '  count: ',join q/ /,map sprintf('%3d',$_),1..$cols;

say 'unROUTE: ',join q/ /,map sprintf('%3d',$_),@unroute;

title 'break into columns';
my @columns = _partition($lines+1,\@words);
show('C',\@columns,\@route);

title 'remove column check blinds';
my @col_check=map{uc pop @$_} @columns;
show('C',\@columns,\@route);
say "col checks @col_check";

title 'un-reverse reversed columns';
for my $i (0..$cols-1){
	my $col=$i+1;
	next if $route[$i] > 0; 
	$columns[$i] = [ reverse $columns[$i]->@* ];
	$route[$i] *= -1 ; 
};

show('C',\@columns,\@route);

title 'unscramble lines';
my @lines = zip( [ @columns[map {($_-1)}@unroute] ]  );

show('L',\@lines);

title 'replace Arbitraries ';
for my $l (@lines){
	for my $w ($l->@*){
		next unless $Arbitraries{lc $w};
		$w = "/$Arbitraries{lc $w}/";
	}
}
show('L',\@lines);

exit;

#####################
# subs

# show array
sub show($prefix,$aref,$labelsref = undef ){
	my $i=0;
	say sprintf('%s%3s(%2d):%s',$prefix,($labelsref?$labelsref->[$i]:''),++$i,join(q/  /,$_->@*))   
		for $aref->@*;
   }

# zip 
# like List::Util::zip but takes arrayref of arrayref 
# destructive, not copying. sinful ! 
sub zip($arrays){
	my @ret_array;
	while (1){
		
		my @slice=  map {(shift $_->@* // '' )} $arrays->@* ; 
		# say "Z: @slice";
		last if none{  $_ } @slice;
		push @ret_array,[@slice];
  	}
	return @ret_array;
}

# partition into lists of length N
# uses List::MoreUtils::part 
# relies on part being order preserving 
# 
sub _partition {
  my ($n, $aref) = @_;
  my $i = 0; 
  my @part = part { int($i++ / $n) } $aref->@*;  
}
############
# setup
sub _blinds{return (WHATS=>10, NEXT=>9, NEWS=>2)}

sub _route($BLIND,$encdec){ #5.022 experimental::signatures  
   # routes here are ONE based. Decrement to uses in indices.
   my %code = ( WHATS=> {
	'enc'=>[6, 10, -1, 8, -2, 4, -7, 3, -5, 9], #WHATS ENCODE
               #1   2   3  4   5  6   7  8   9 10
	'dec'=>[3,  5,  8, 6,  9, 1,  7, 4, 10, 2], #WHATS DECODE
	});
  return $code{$BLIND}->{$encdec}->@*;
}

###############
# miniture Nomenclator or codebook of 'Arbitraries' aka codeword replacements
# (  just enough for this message )
sub _abitraries{
return ( 
 bologne =>'Pres of U.S.',
 emma => '9am', flood=>'12', 
 galway=>'Richmond',
 paradise => 'Col.' , 
 pekin => q(,),  pedlar => q(,), 
 shelter=> 'Genl.' , 
 star => q(?),
 toby => q(to be),  # homonym pun, not really in book but toby transliterated by hand
 torch => q(of the),
 unity => q(.), 
# 'my' => 'by', # presume copy error ? 
 walnut =>'Rebel', 
 yoke => 'signed',
 zebra=> q(.), zodiac=> q(.),
)}

__DATA__
Whats next news I the prayers I to while coming star
what you you mean dispatch zebra I you spirit there
understanding any if the piloted your offer there such of
any and have was I to Emma never seen of of no toby
Zodiac on there is with what remains yoke as sign my
sign temper acted in to paradise flood over weitzel abe
remember pekin that my walnut to form such why not
say may it if together there you have spoken matter have
senses shelter bardie not galway in manifested torch
letter in no bologne plenty dont sign me you legislature
me appeared but bearing out unity in your prayers
while doubt the is the is pedlar draw you down
