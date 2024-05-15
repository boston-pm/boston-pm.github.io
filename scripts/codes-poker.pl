#! perl
#
use v5.036;
use String::LCSS "lcss";
# no longer need use experimental  'signatures';


## To test whether 6 digit confirm codes are likely to have a pattern
#

my $N = 1000;

my @Samples=(  ## calibration samples
    [1, 2, 3, 4, 5, 5],
    [1, 2, 3, 1, 2, 3],
    [1, 2, 3, 4, 5, 6],
    [2, 4, 6, 8, 9, 0],
    [2, 4, 6, 8, 7, 0],
    [1, 5, 2, 5, 9, 5],  # not sequence, not treble, just repeat 5
    [3, 4, 5, 6, 5, 5],  # analogous to J555+5 his nobs Cribbage 29
                         # imperfect as should get 3×5 and Seq:4 either way?
    [3, 4, 5, 5, 5, 6],  # analogous to J555+5 his nobs Cribbage 29
     );
 
push @Samples, random_code() for 0..($N - (1+ scalar @Samples));
say scalar @Samples;

my $nothings=0;

for my $sample (@Samples){
    # say $sample->@*;
    my $hand = hand($sample);
    say $sample->@*, " = $hand ;";
    $nothings ++ if $hand eq 'nothing';
}

say "$nothings nothings; ", $nothings/$N ;


sub hand($aref){
    my %Names=(2=>'pair',3=>'three',4=>'four',5=>'five',6=>'six',0=>'nought',1=>'single',);

    my $String = join q(), $aref->@*;
    my @Cards = sort $aref->@*;
    my @Scores;


    # repeat of ..xxx.. or xy..xyp
    my ($one, $two, $three) = ($String =~ m{ ((\d)\g{2}+) | (\d{2,}).*\g{3}  }xism  ); 
    #                    say "## '$String' : (($two)$one) | ($three) "; # debug
    my $rep = $one || $two || $three || '';
    push @Scores, "rep:@{[length $rep]}:$rep" if $rep;

    my $seq = longest_seq($String);
    push @Scores, "seq:$seq" if $seq;

    my %Count;
    $Count{$_}++ for @Cards;
    # say  grep {$_ ne 1} values %Count;
    push @Scores, $_ for map { $Names{$_} } grep {$_ ne 1} values %Count;

    return 'nothing' unless @Scores;

    return join q(,), @Scores;

}

# find longest sequence
sub longest_seq ($string){
    # prefers ascending sequence to a longer descending or arithmetic skip seq
    # although neither Poker nor Cribbage allows sequence of TWO, 
    # nor arithmetic skips of 2,3,4,
    # optionally allowed those here as they're human patterns.
    #
    # Allowing descending, skip, length 2 nearly obliterates nothings!
    # (from 1 nothing in ~8, to 1 nothing in ~50)
    my $MIN_SEQ   = 2;
    my $ALLOW_ALT = 1;
    my $main_sequence = '0123456789012345'; # master; allow for around-the-corner seqs
    my ($longest,$iLeft,$iRight) = lcss($main_sequence, $string);

    return length($longest).":$longest"
        if  $longest
        and length($longest) >= $MIN_SEQ ;

    return unless $ALLOW_ALT;

    my $alt_sequence = '9876543210 024680 13579 0369 048';
    ($longest,$iLeft,$iRight) = lcss($alt_sequence, $string);
    return length($longest).":$longest"
        if  $longest
        and length($longest) >= $MIN_SEQ ;


    return ;
}

## Pick a random 6 digit code, draw with replacement
sub random_code (){
   return [ map {random_int_between(0,9)} 1..6 ] ;
}

# from perlfaq4, modified for signatures
sub random_int_between ($min, $max) {
    # Assumes that the two arguments are integers themselves!
    return $min if $min == $max;
    ($min, $max) = ($max, $min)  if  $min > $max;
    return $min + int rand(1 + $max - $min);
}
