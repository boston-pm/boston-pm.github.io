#!/usr/bin/env perl
use 5.14.1;
use warnings;
use utf8;
use open qw/:std :utf8/;

=pod

=head1 unroll - a Twitter thread unroll-er for offline storage

=head2 usage

=over 4

    (. ./env.sh; perl ./unroll.pl 1524045502714728449 
    
    Boston Perl Mongers TONIGHT Tuesday, May 10, 2022 7:30 PM to 9:30 PM EDT (Every 2nd Tuesday of the month) (on JITSI)
    
    Using Perl's Twitter::API


=back

=head2 Modules used

=over 4

=item L<Twitter::API|https://metacpan.org/pod/Twitter::API>

The useful wrapper of Twitter's API.

=item L<Data::Dump|https://metacpan.org/pod/Data::Dump>

using only C<pp> for pretty-printing debug dumps of nested HoAoH structures.

=item L<Try::Tiny|https://metacpan.org/pod/Try::Tiny>

Everyone's favorite error handler, needed as remote API's can choke up.

=item L<constant|https://metacpan.org/pod/constant>

To allow an C<if DEBUG> symbol 

=back 

=cut

use Twitter::API;
use Data::Dump qw/pp/;
use Twitter::API::Util 'is_twitter_api_error';
use Try::Tiny;
use constant { DEBUG=>0, } ;

=pod

Before using any twitter API application you must use OATH to authorize API access with your account.

See
L<oauth_desktop.pl|https://metacpan.org/release/MMIMS/Twitter-API-1.0006/source/examples/oauth_desktop.pl>
in the C<Twitter::API> distribution for details.

A permanent application should create it's own application key, but
test apps may use the C<Twitter::API> module's own.

The application can read the four security parameters from a protected config file or process environment.
This demo reads from ENV.

=cut

my $client = Twitter::API->new_with_traits(
    traits => [ qw/ApiMethods RateLimiting DecodeHtmlEntities NormalizeBooleans/ ],
    consumer_key        => $ENV{CONSUMER_KEY},
    consumer_secret     => $ENV{CONSUMER_SECRET},
    access_token        => $ENV{ACCESS_TOKEN},
    access_token_secret => $ENV{ACCESS_TOKEN_SECRET},
);

my $r = $client->verify_credentials;
# say "$$r{screen_name} is authorized";

my $mentions = $client->mentions;
# for my $status ( @$mentions ) {
my $status; 

=pod

The sole command-line argument is a Twitter status number, which is the =B<last> tweet 
in a chain from which to unroll backwards.

The imediate purpose for this unroller was to have a non-caching, not-tracking unroll of 
a historical project's thread on B<#ordainedslavery>, Mass Bay Puritan preachers
who owned human beings. 

The 101st entry in the thread is the default start in this script
C<L<https://twiter.com/elevennames/status/1509876985744355329>>

As a bonus in addition to doing an unroll, this script will also take a heuristic attempt 
to make a Town index, so it collects tweets in a reversing list C<@Keepers> and an HoA C<%Towns>.

C<$id> is the tweet to next process, starting with the starting point (tail) from argument or default.

=cut

my $id= shift @ARGV // 1509876985744355329; # Latest end of thread, should be a parameter

my @Keepers;
my %Towns;

=pod

Loop logic is simple, continue looking up C<$id> and chaining until at begining. 

=cut

while ($id) {

    try {
        $status = $client->show_status($id, { cache=>'none', tweet_mode=>'extended' } );
        say ref $status if DEBUG;
    }
    catch {
        die $_ unless is_twitter_api_error($_);
     
        # The error object includes plenty of information
        say $_->http_request->as_string;
        say $_->http_response->as_string;
        say 'No use retrying right away' if $_->is_permanent_error;
        if ( $_->is_token_error ) {
            say "There's something wrong with this token."
        }
        if ( $_->twitter_error_code == 326 ) {
            say "Oops! Twitter thinks you're spam bot!";
        }

    };

    # say $status->{user}->{screen_name}, q(: ), $status->{full_text};

=pod

C<< $s->{full_text} >> is the message body needed.

Heuristically grab serial number, names of prelate, town from the tweet.

Hash-tags that apply to the whole series are skipped but otherise likely indicate the town.

User mentions are likely a Historical Society account, and indicate a town.

This heuristic section is tuned to the specific use and would be greatly simplified for generic use!
For use on a conversational thread, would want to capture user names (handle and/or display), 
but since purpose was unrolling soliloquoy thread, that isn't done here.
   
=cut

    # What to save
    my @Temp = ($status->{full_text});

    # grab post number, and lead name if possible.
    # NOT case-insensitive to avoid needing stop-words
    my ($num, $reverend) = ($status->{full_text}) =~ / (?: ^ | \s)  (\d+(?: [.][0-9]+)? ) [.]? \s+ ((?: Rev[erend]*[.]? \s* )? (?: Mr[.]? \s*)?  (?: [[:upper:]][[:word:]]+ \s* )+ )? /xsm;
    $num //= q(??);
    $reverend //= q();
    say pp($status) if  $num eq q(??) or (! defined $reverend and $num !~ /\d+[.]\d+/);

    if ($status->{entities}->{hashtags}) {
        my @tags = grep {not $_ =~ m/slavery/ } 
                map {$_->{text}}
                     $status->{entities}->{hashtags}->@* ;
        unshift $Towns{$_}->@*, "$num. $reverend" for @tags;

        }
    if ( scalar $status->{entities}->{user_mentions}->@* ){
        push $Towns{$_}->@*, "$num. $reverend" for map {$_->{screen_name}} $status->{entities}->{user_mentions}->@* 

    }
    
=pod

Annoyingly, pictures ("media") and links ("urls") are in two different forks of the nested HoAo? structure.
    
=cut

    # Need to use extended_entities to see > 1 photo.
    # Expanded URLs all have /1, not /1 .. /4, so need media_url instead.


    if ($status->{extended_entities}->{media}){
        # say "Media ", $_->{media_url} for $status->{extended_entities}->{media}->@* ;
        push @Temp, $_->{media_url}   for $status->{extended_entities}->{media}->@* ;
    }

    # But links are ok in plain entities.
    if ($status->{entities}->{urls}){
        # say "Link ", $_->{expanded_url} for $status->{entities}->{urls}->@* ;
        push @Temp, $_->{expanded_url} for $status->{entities}->{urls}->@* ;
    }

=pod

Re-establish our loop invariant.

(Debug code here will dump the tail tweet and bail on the loop; 
good for debugging heurisic collection.)


=cut    

    # loop chaining
    $id = $status->{in_reply_to_status_id} // undef;
    say "PREVIOUS $id" if DEBUG;
        
    say pp($status) if  DEBUG;

    last if DEBUG;

=pod

by C<unshift>inging onto C<@Keepers>, the list of tweets is reversed as its collected. 
(If we C<push>d, we'd have to do a C<pop> loop or explicit C<reverse>.)

Effect is as if we'd done C<unshift @Keepers, [ "full text", "url", ...];>

=cut 

    unshift @Keepers, \@Temp;
} # While

=pod

First output is the C<%Town> index, which is produced in sorted order.

This uses the modern postfix-deref notation.

=cut

# Give town index
for my $town  (sort keys %Towns ) {
    my $aref = $Towns{$town};
    say "$town: ",join(q(, ), $aref->@* );

}


=pod

And finally, print the message thread, 
in original sequence, full text with saved media links.

=cut

# Give full list in order
# say pp \@Keepers;
say "\n\n";

for my $kept (@Keepers){
    say $_ for $kept->@*;
    say "";
}
