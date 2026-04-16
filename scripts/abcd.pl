# abcd.pl
# On A Problem Squared Eps. 132 out this week, they (are) ask(ed)
# > Are there any English words with four letters in alphabetical order?
# https://a-problem-squared.fandom.com/wiki/A_Problem_Squared_Wiki 
# https://bsky.app/profile/aproblemsquared.bsky.social/post/3mjecz4pn552x
# and answer with "bad Python code". 
# Let's answer it with good Perl code!

use strict;
use warnings;
use 5.040;

my @letters = ( "a" .. "z" );
my $alphabet = join(q(),  @letters);
say "'$alphabet'";


my $len = 4;
my @sequences = map { substr $alphabet, $_, $len } 0..($#letters - $len);
# say for @sequences;
my $pat = join q( | ), @sequences;
$pat = qr/ $pat /ix;

say $pat;

# template to read lines from CLI args like `-nE` from `perldoc continue` , `perldoc eof`
while (<>) {
    ### redo always comes here
    chop while m{[\r\n]$}; # chomp respects $/ but Internet files have CRLF on POSIX systems ...
    say "$ARGV:$.:\t$&:\t'$_'" if $_ =~ $pat; 
} continue {
    ### next always comes here
    # do_something_else;
    # make $. correct for multiple files in @ARGV
    close ARGV and say "" if eof;  # Not eof()!
    # then back to the top to re-check EXPR
}
### last always comes here

