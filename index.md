% Boston Perl Mongers  ![](./images/Logo.jpg){#logo .float_r width=30% }
% 
% 2023



Boston.pm is the Boston chapter of the international [Perl Mongers](https://www.pm.org/) collection of [Perl](https://www.perl.org) user groups, founded in 1998.

The group welcomes anyone to join our mailing list and attend our meetings.

# Meetings

## Technical Meeting Series

Boston PM has had in-person technical meetings in the Greater Boston area for 20+ years (pre-plague).

For a calendar of up-coming meetings, see below at [Schedule](#schedule).

For past calendar and annals of history, see the [History](History-00.html) pages.

In the Virtual Meeting world, Boston PM participates in three sets of meetings:

* Meetings arranged and hosted by Boston.PM are in [meet.Jit.si](https://meet.Jit.si) and on 2d Tuesday. See below at Schedule and BoilerPlate for details.

* Meetings arranged and hosted by [Charlotte.PM](https://www.meetup.com/charlotte-pm/) are in Zoom and on Last Wednesdays.  Boston.pm provides publicity and attendees for these meetings. Charlotte records these.

* Meetings hosted by Boston Linux Unix (<http://blu.org>) are in [Jitsi](https://meet.Jit.si) and on 3d Wednesday. These are POSIX or hardware related, not Perl related. BLU records these and publishes on YouTube.

    - Bill Ricker, Boston.pm facilitator, regularly invites Boston.PM to his [BLU](https://blu.org/) presentations and others we think will be of interest. These tend to be POSIX as opposed to Perl, though both Bill and Federico Lucifredi tend to have some Perl in support of their projects.

(A few of our older, in-person Boston.pm meetings (2014-2015) are on [YouTube](https://www.youtube.com/channel/UCY0sL_ILd6JUixlppAQlgsA/videos) mostly when we had a remote speaker via YouTube/Hangouts, but we haven't been adding to this collection.)




## Social Meetings

In normal times, Boston.pm does non-technical, social meetings.
Typically this involves a restaurant or bar but could be a coffee-shop, public park, house-party, whatever.

There is no regular schedule.
Typically these are negotiated among interested folks on the Discuss mailing-list.


# Communications

## Social Media

Boston-PM has presence on the following socials -

* [MeetUp](https://www.meetup.com/boston-pm/)![icon](./images/Meetup-icon.png){#mu height=20 }
* [LinkedIn](https://www.linkedin.com/groups/41363/)![icon](./images/Linkedin-icon.png){#lin height=20 }
* [Twitter](https://twitter.com/BostonPM)![icon](./images/Twitter-icon.png){#tw height=20 }
* Fediverse/Mastodon - _likely coming soon!_
* [Facebook Page](https://www.facebook.com/bostonpm/)
* [FaceBook Group](https://www.facebook.com/groups/131595281237)
* [YouTube](https://www.youtube.com/channel/UCY0sL_ILd6JUixlppAQlgsA/videos) (historical only at this time)
* Perl Weekly [newsletter ![icon](./images/Mail-icon.png){#pwnl height=20 }](https://perlweekly.com/), [iCal calendar](https://perlweekly.com/perlweekly.ical), [![RSS](./images/feed-icon32x32.png){#rss height=20 }](https://perlweekly.com/perlweekly.rss); and their [Twitter ![icon](./images/Twitter-icon.png){#pwtw height=20 }](https://twitter.com/PerlWeekly) may promote select items of ours. <br /> [![](./images/perl_weekly_234x60.png)](https://perlweekly.com/)
* [The Boston-area User Group Calendar](http://www.bugc.org) "Since 1997"

The primary announcement channels are MeetUp, Twitter, and Announce mailing-list.


## Mailing Lists ![icon](./images/Mail-icon.png){#ml height=30 }

(*Are Mailing Lists Anti-Social media?*)

Boston.pm has two email lists supported by center Perl Mongers. Mailman list management has the official archives being password protected, visible only to list members. **HOWEVER NOTE** that both lists are logged by one or more popular archival websites that have subscribed to the lists, so these lists are effectively public.

* [Announce list](https://mail.pm.org/mailman/listinfo/boston-pm-announce) is moderated, intended for meeting & social announcements and cancellations and other such things. [Unofficial Public Archive, 2008-present](https://www.mail-archive.com/boston-pm-announce@mail.pm.org/info.html) 

* [Discuss list](https://mail.pm.org/mailman/listinfo/boston-pm) is un-moderated, available for discussion of Perl-ish topics, discussions before and after meetings, etc. [Unofficial Public Archive, 2002-2018](https://www.mail-archive.com/boston-pm@pm.org/info.html) (*2002-2008 there was a single list, that history is here.*)


Before posting jobs to the list, please check our [Job Posting Policy](JobPostingPolicy.html).

# Schedule

**Since we're having speakers from the UK the next two months, we'll be starting 6:30pm ET so that we're at least *starting* on Tuesday for them.**



## Tuesday, March 14th (π day = &#x1F967; day), 6:30 &#127482;&#127480;  Boston PM: Ovid(tape)+LeoNerd(live) on Corinna - OO in Perl5 Core


We'll have **Curtis *"Ovid"* Poe** on the strategy of Corinna project and **Paul "[`PEVANS`](https://metacpan.org/author/PEVANS)/[`LeoNerd`](http://www.leonerd.org.uk/)" Evans**, Perl Steering Committe and `Object::Pad implementor`, live for the practicalities and Q&A.

Last summer, Ovid posted exciting news -

> "For #perl devs wondering how the Corinna #oop project is going, @cpan_pevans
is now working on stage 1 of the accepted portion of the RFC. I've put that in the [repo](https://github.com/Ovid/Cor/blob/master/rfc/mvp.md) so you can follow along"  
> [`@OvidPerl` 2022-08-18](https://twitter.com/OvidPerl/status/1560305460707827715)

Just recently in mid February 2023, Ovid and Paul again shared exciting news: P5P's upcoming development release Perl 5.37.9 (alpha/beta for 5.40.0) will contain  
 **`use feature 'class';`**  
It has been merged.

Ovid is the architect and Paul is the lead developer for adding a new object-oriented system called Corinna† (formerly & confusingly "Cor" into Perl 5 Core. They've had an open community process to develop an RFC or proposal and prototype, but until recently, without commitment for the Perl 5 Porters (P5P) to actually implement it in Perl 5. Over the summer, P5P have approved the initial Stage 1 integration into Perl Core. While we've had 20+ years of new OO packages for Perl5 since 5.0, this is the first actual (as opposed to proposed) overhaul of the *core* OO system in Perl 5.

PEVANS's non-Core, prototype is [Object::Pad](https://metacpan.org/dist/Object-Pad), which can be conditionally imported in compatibility mode via [Feature::Compat::Class](https://metacpan.org/pod/Feature::Compat::Class).

Ovid's recent writing on Corinna are [on his blog](https://ovid.github.io/tags/corinna.html).

The [Corinna project](https://github.com/Ovid/Cor) has a  [wiki](https://github.com/Ovid/Cor/wiki) and the [RFC](https://github.com/Ovid/Cor#rfc) that proposed adding Corinna to Perl 5 Core, and the P5P-accepted Stage 1 [Minimal Viable Product RFC](https://github.com/Ovid/Cor/blob/master/rfc/mvp.md). [His 2021 editorial](https://dev.to/ovid/bringing-modern-oo-to-perl-51ak) explains the difference between Moose (*et al*), Stevan Little's Moxie, and Corinna.

***Damian Conway*** posted an exultation for the (January 2022) P5P approval of the Stage 1 MVP RFC _but i can't find it again_. His previous writings endorsing the project are

* [A (not so) simple matter of privacy 2021-DEC](http://blogs.perl.org/users/damian_conway/2021/12/a-not-so-simple-matter-of-privacy.html), 
* [A dream resyntaxed 2021-Nov](http://blogs.perl.org/users/damian_conway/2021/11/a-dream-resyntaxed.html)
* [A dream realized 2021-Aug](http://blogs.perl.org/users/damian_conway/2021/08/a-dream-realized.html)

† _Corinna_ is a classical allusion in connection to Curtis's pseudonym _Ovid_, which explains the classical (and otherwise potentially NSFW) image on the MVP RFC tweet.

------------

This is a JitSi meeting. The secure URL will be computed by this command (valid only during that week):

```
perl -MDigest::SHA=sha1_hex -MPOSIX=strftime -le 'print strftime "%Y/%m/%d week %U", localtime; $date=strftime "Y%Y W%U", localtime; print $date; print  "https://meet.jit.si/BostonPM-".substr(sha1_hex("BostonPM".$date),0,12);'  

```
(and will likely be posted here just in time, but to avoid spammers, won't be posted on public social media)

(See [Boilerplate](./index.html/#boilerplate) below for additional how-to etc.)


## BACKUP TOPICS 

* Using `MP3::Tag` `Syntax::Keyword::Try` etc to make playable audio archives with legible titles (`PerlHack/audio/mp3info.pl`)
* ??


# BoilerPlate

* Meetings hosted by Boston.PM are in [meet.Jit.si](https://meet.Jit.si) and on 2d Tuesday.
* Meetings hosted by [Charlotte.PM](https://www.meetup.com/charlotte-pm/) are in Zoom and on Last Wednesdays.
* Meetings hosted by Boston Linux Unix (<http://blu.org>) are in Jitsi and on 3d Wednesday.

(*If you need to hear my rant about why Zoom’s “fixes” are inadequate, ask me off-list. Or watch my BLU Cryptology History & News annual report for the last decade.*)

## JITSI notes

[Jitsi](https://meet.jit.si) is a Free/Libre OSS project sponsored by 8x8 (an Atlassian spin-off). It is the freemium base for their added-value corporate meeting & VOIP platform. As FLOSS, it can be self-hosted; they provide a free demo server. We will currently be using the free demo server, but may migrate to a hosted server (where we can set defaults, privileges).

Natick FOSS group has an updated [5-page Jitsi Help .pdf file](http://runeman.org/articles/natick-foss/jitsi/jitsi-2022-09-05.pdf), and you can practice beforehand.  (They meet 1st Thursdays, online, early afternoon - (semi)retired users.)


One can use plain web mode, but you can install the browser plug-in if you like (recommended if sharing slides or terminal). There are also iOS (iPhone/iPad) and Android Jitsi [apps](https://jitsi.org/downloads/) which work well (not for screen-share from Android). Screen-sharing may require a browser with paranoid modes off, e.g. Firefox Private Window or Chromium Temporary Profile.


[JITSI keyboard shortcuts](https://jitsi.github.io/handbook/docs/user-guide/keyboard-shortcuts)

JITSI scales fine to more people in face-sharing Brady-Bunch / Hollywood Squares mode than you can easily see at once (30ish) and if folks turn off their cameras when just listening/talking, i.e. when not commenting/presenting, it scales much higher. (If we later get more folks than will comfortably fit in Jitsi, we can set up a stream to YouTubeLive or some other platform … or upgrade to a proper panelist platform feeding a stream, but the “seminar” quality of Jitsi is fine for our level of anarchy.)

I will routinely mute those not presenting so you’ll usually need to unmute to comment. Hint: Space-bar is push to talk, M is mute/unmute (on phone/tablet it’s the skeuomorphic microphone, avoid the handset hangup button!).


