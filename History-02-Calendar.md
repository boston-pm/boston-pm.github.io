% Calendar (Wiki) History (2004-2016) ![](./images/Logo.jpg){#logo .float_r width=30% }
% Boston Perl Mongers
  from old wiki entries of Ronald J Kimball & Bill Ricker
% 2004-2016


Boston Perl Mongers history is divided into three parts, like Gaul.

[Key Highlights (annals)](History-00.html)

* [Reconstructed Ancient History 1999-2004](History-01-Reconstructed-1999.html)
* [Mid History 2004-2016](History-02-Calendar.html) ***this file***
* [Recent History 2017-present](History-03-Email.html)


(*Note. This file is in **reverse** chronological order, most recent at the top.
the others are chronological, recent at bottom.
All start with a table of contents by year.*)


Tech Meetings have traditionally held on the 2nd Tuesday of every month, most recently at MIT.

# The MIT Era 2005-08-09 - 2020-03-09

For 15 years, MIT IT and Facilities provided user group meeting space on campus for the convenience of MIT staff and other community members who wished to attend.

The facilities were very nice MBA case rooms in the Business & Humanities building E51.

*MIT Era spans the file break between Mid History and [Recent history](History-03-Email.html).*

# 2016

## December 13th - Christmas Lights Tour - *Bill & Greek Chorus*

A mutually-guided tour of the first half of several Perl-ish Advent Calendars
[![XmasLights33.png](./images/XmasLights33.png)](./images/Xmas-Lights.pdf)

Around this time of year there is a tradition in the programming
communities to share our favorite libraries, tools, and tips we've
gathered over the past year. These prizes are dolled out once per day
in classic Advent Calendar style. In the next Boston.pm meeting we'll
take a look at the highlights from several in-progress Perl-related
calendars, including:
 
* Perl Advent (classic Perl 5)
* Perl6 Advent
* Dancer
* C::Blocks Advent (a whole calendar for a single module in Beta !?)

and maybe more from the master list via [Advent Planet ](http://www.lenjaffe.com/AdventPlanet/2016/index.html)which has other languages and sysadmin, perf, ..., and a code based puzzles.
 
(Audience participation: As usual, our Greek chorus answers each other's questions about the modules seen.)
 
<Xmas-Lights.pdf>
 
 
 
## NO NOVEMBER meeting

2nd Tuesday in November in a Leap year is Election Day - 
I presume most people will be watching a different channel that night. 

We often do social in December.
 
## Tues Oct 11th, room E51-376 Bill Ricker, Perl 5.22 & Abe Lincoln's War Cipher

Last month, I did my usual Cryptographic History talk before BLU.org's GPG/PGP key-signing. 
The title was "*Transposition Cyphers in Historic Context*", 
looking at a theory and two specific uses, President Lincoln and German Army Corps WW1. 
As usual, there was a bit of Perl code used for demonstration - for Lincoln's.
 
This time, I used the 5.020 experimental features, **`postderef`** and **`signatures,`**
that we've discussed in new release feature reviews (both promoted to stable in 5.024, so safe to use in real code).

 
![a Lincoln telegram](./images/telegram.png)

BLU saw the history, but this month, Boston.pm gets to see the code.

'''Materials'''
 
* <file/view/lincoln-whatsnextnews.pl.html> (tidy), source <lincoln-whatsnextnews.pl>
* <Transposition_in_historic_context.pdf> Slides (pdf) <Transposition_in_historic_context-1A.pdf> (pdf-1a archival with fonts)

'''Citizen science links''' for the transcription project -
* <http://www.smithsonianmag.com/smart-news/you-can-help-decode-thousands-top-secret-civil-war-telegrams-180959561>
* <https://www.zooniverse.org/projects/zooniverse/decoding-the-civil-war>
* <https://www.zooniverse.org/projects/zooniverse/decoding-the-civil-war/about/education>
* <https://blog.decodingthecivilwar'.org/>

'''Articles'''
 

* "'''Anatomy of a Cipher'''" <https://web.archive.org/web/20160628222057/http://www.c3teachers.org/wp-content/uploads/2016/01/Anatomy-of-a-Cipher.pdf>  Discussion of this code and this specific message''
* ''"'''The Gray Fox Swallowed the Bait'''" (''NSA Spectrum// magazine, de-classified) Wig Wag intercept, cracking, and gas-lighting, not directly relate but showing confusion when code is intercepted and broken !
 [NSA](https://www.nsa.gov/news-features/declassified-documents/cryptologic-spectrum/assets/files/gray_fox.pdf)

'''Books'''
 
* William Rattle Plum, <u>'''The Military Telegraph during the Civil War in the United States'''</u> v1 & v2
 [archive.org](https://archive.org/search.php?query=Plum%2C%20William%20Rattle)
* David Homer Bates, "<u>'''Lincoln in the Telegraph Office'''</u>: Recollections of the United States Military Telegraph Corps" [archive.org](https://archive.org/search.php?query=Lincoln%20in%20the%20Telegraph%20Office%20%20Bates)


## Tues Sept 13th, room E51-376 - Brendan Gregg's FlameGraphs (Bill Ricker, moderator)
![FlameGraph of cpu of mysql](./images/cpu-mysql-crop-250.png)

I stumbled on a link to a set of posts and hand-drawn 'zines' about Linux
debugging and 'doing' software at [jvns.ca/zines/](http://jvns.ca/zines/). 
The Linux Debugging zine includes several 'old friend' tools (which
gives me confidence in this person's opinions) and also included new
or new to me options and tools, and specifically enthused over **Brendan
Gregg's invention: FlameGraphs.**

Brendan Gregg invented these to make sense of profile stack samples of
MySQL, which produced so much data that he had to invent a new way to
visualize ... with Perl, naturally. Tim Bunce has bundled and enhanced
FlameGraphs into CPAN NYTProf, but it's usable with any profiler
giving full stack traces with symbols (Dtrace, perf, SystemTrap, OS X
Instruments, Xperf.exe, NYTProf for Perl). -Bill Ricker

We will watch a video by the author and play with the source code.

Links

![blazing performance with flame graphs](./images/Blazing-performance-with-flame-graphs-1-638.jpg)


* [Brendan Gregg ](http://www.brendangregg.com)
    - [FlameGraphs](http://www.brendangregg.com/flamegraphs.html)
    - [CPU flameGraphs](http://www.brendangregg.com/FlameGraphs/cpuflamegraphs.html)
    - [GitHub ](https://github.com/brendangregg/FlameGraph/)
    - [flamegraph.pl](https://github.com/brendangregg/FlameGraph/blob/master/flamegraph.pl)
    - [DTrace.org Blogs](http://dtrace.org/blogs/brendan/page/12/)
    - LISA'13 "[Blazing Performance with Flame Graphs](https://www.usenix.org/conference/lisa13/technical-sessions/plenary/gregg)" (plenary!)
* [Video](https://www.youtube.com/embed/nZfNehCzGdw?rel=0)
    - [Start of Advanced section](https://youtu.be/nZfNehCzGdw?t=3353) ... where we stopped, continue from here
    - [Slides](http://www.slideshare.net/slideshow/embed_code/28010650)
    - [Interactive Demos](https://github.com/brendangregg/FlameGraph/tree/master/demos) on GitHub
    - [UPDATE: Linux finally has as-good-as-DTrace](http://www.brendangregg.com/blog/2016-10-27/dtrace-for-linux-2016.html) ('''new post''' 2016-10-27 after meeting!)
    - '''Further UPDATE''': Brendan presented at LISA'16 (Boston, 1st week December) on the BPF facility allowing full, full-speed tracing. Slides should already be on his website, I'll link the video when released in Q1
* Used in [CPAN Devel::NYTProf](https://metacpan.org/pod/distribution/Devel-NYTProf/bin/nytprofhtml)
    - [blog announce by Tim Bunce](https://blog.timbunce.org/2013/04/08/nytprof-v5-flaming-precision/)
![J Evans's debugging tools cover](./images/debugging-tools-cover-50pc.png)
* [Julia Evans](http://jvns.ca/) Debugging and general dev blogs & debug zines - where i found the first links
    to the above - highly recommended
    -  [zines](http://jvns.ca/zines/) -> [debugging linux](http://jvns.ca/debugging-zine.pdf) from last week, direct inspiration for this talk

## NO AUGUST 2016 MEETING

 
 
## Tuesday, July 12th, 2016 - MIT E51-376
## Bill Ricker & hackathon chorus - Biennial Care and Feeding of Boston.pm's adopted Damian CPAN Module Config::Std

 Our ?biennial? hackathon to support our adopted Damian module, Config::Std is our July topic.
 [https://metacpan.org/release/Config-Std]
 [https://github.com/n1vux/Config-Std-Perl]
 We have a new old bug -- prior deprecation of literal { becomes fatal in 5.26, coming soon
 [https://rt.cpan.org/Ticket/Display.html?id=114342]
 
  You'll want to perlbrew a 5.25 or blead-perl if you want to play along with testing on your device.
 
 
## June 14th, Tim King - Testing Modern Perl with Test::Class

Tim will examine best practices for testing Modern Perl, including a tutorial on using
[Test::Class](https://metacpan.org/pod/Test::Class).
 
![Tim King](./images/portrait-tim-king.png)

[Tim King](http://www.theperlshop.com/about#tim-king) is Lead Developer at
[The Perl Shop](http://www.theperlshop.com/). Tim got his start writing
real-time embedded software for high-speed centrifuges the 1980’s and
went on to do embedded software for '''Kurzweil Music Systems''' and
'''Avid Technology.''' He has been developing for the web since the web
existed, and brings discipline and skills honed from embedded systems to
enterprise software. His expertise is in designing for software quality,
achieved through automated code testing, test-first development, and
risk managed refactoring, all through an agile process.
 
 
 
## May 10th - Canceled


## April 12th Richard "Ricky" Morse - i18n and HTML with Perl

Some short observations, including code, on dealing with a multi-lingual
website. Mention, and possibly discussion, will be made of [Plack](https://metacpan.org/pod/Plack),
GNU’s [Gettext](https://www.gnu.org/software/gettext/) and its [PO file](https://www.gnu.org/software/gettext/manual/html_node/PO-Files.html), `Dom::Tiny`† (with a possible 1-minute
excursion into [HTML::Parser](https://metacpan.org/pod/HTML::Parser)), [Locale::PO](https://metacpan.org/pod/HTML::Parser) (and various rewritings),
the [CLDR](https://en.wikipedia.org/wiki/Common_Locale_Data_Repository), and the [Locales](https://metacpan.org/pod/Locales) module.
 
†(*Narrator: Historical update, [Mojo::DOM58](https://metacpan.org/pod/Mojo::DOM58) replace [DOM::Tiny](https://metacpan.org/pod/DOM::Tiny) which continues as a subclass alias to Mojo::DOM58 for compatibility.*)

## March 8th - Rakudo Perl 6 and MoarVM Performance Advances - J. Worthington

(By the magic of video - Yapc::EU)
 
> "Performance has long been one of the blockers to greater adoption of
Perl 6. The language is designed in expectation of a sufficiently smart
optimizer, knowing that such things are possible - but setting quite a
challenge for those of us working on Perl 6 implementation.
> Following the "make it work, then make it fast" approach, we've done a
lot of work over the years on getting many language features to work well
in Rakudo. ... In this session I'll discuss how we've been improving Perl
6 performance by working at all levels of the implementation: optimizing
built-ins, improving the Perl 6 optimizer's ability to simplify code,
and building a powerful dynamic optimizer for MoarVM that uses run-time
information about a program's typical behavior to cheapen attribute
accesses, resolve dispatches, eliminate type checks, perform inlining,
and much more. I'll also take a look at the MoarVM JIT project, and how
that is helping.

![benchmark](./images/benchmark.png)
 
> Finally, I'll take stock of where we're at so far using latest benchmark results: what we can do about as well as Perl 5, where Perl 5 comes out faster, and where Rakudo Perl 6 comes out ahead."

![J Worthington portrait](./images/Worthington.jpg){ width=20%} 
[Jonathan Worthington](https://twitter.com/jnthnwrthngtn) is MoarVM and Rakudo Perl 6 compiler architect. 
Co-founder of Edument in Czech Republic. 
Like cooking/eating Indian food, craft beer, and seeing the world.
 
 
 
## Feb 9th, - Parallelism, Concurrency, and Asynchrony in Perl 6. - Jonathan Worthington

Lead Dev of Rakudo Perl 6 and founder&architect of MoarVM (appearing via tape delay)

> "Parallelism and concurrency are different, though often
confused. Asynchrony adds yet another concept into the mix. And there
are dozens of different approaches to working with these concepts. How
do we identify what kind of problem we're dealing with, and pick an
approach to solving it?
>  "In this session, I'll look at a range of different problems - some
parallel, some concurrent - and show the approaches that may be taken
to solve them. And, since I've been working on the Perl 6 parallelism
and concurrency features, I'll show how these solutions look in Perl 6."
 
... and any comments from anyone who's downloaded it and messed with it since Sixmas ....
 
(Note, word is if you had an old RakudoBrew, [it needs removal and re-clone for the release](http://www.learningperl6.com/2016/02/06/dont-install-over-your-existing-perl-6).)
 
 
 
## January 12th 2016, CANCEL DUE TO WEATHER
 


# 2015 

## Autumn Theme: Perl 6 for Xmas is "Sixmas"
 
## December 8th, 20115 Perl 6 Grammars - It's a RegEx, a Parser, and a Dessert Topping (Perl 6 is almost here: Part 3)

We have two short, recent videos each with example code on one of the
key improvements P5→P6, moving Parse-Rec-Descent into the guts as
P6 Grammars.

This is possibly the feature that will drive earliest Perl6 production
deployments. (IIRC, years ago Dan told us it already happened!)

Demos Explained -
 
* App::p6tags - Generate editor tags for perl6.
* Syntax colorizing code in a presentation with P6

( If anyone knows of a demo of logic programming or 'Eliza bot' in Perl6 grammars, let me know so we can include it. -- bill )
 

 
## November 10, 2015 - "Get Ready To Party" (Perl 6 is almost here: Part 2)

*Larry Wall* (appearing by tape delay)

Continuing our season series for the December 2015 launch of Perl 6.0.0 ...

(*Narrator: The language now known as Raku.*)

this is an introduction to Perl6 by comparison to Perl5 and Tolkien, Larry's 2015 conference talk.

It was the pre-announcement of the "yes *this* Christmas" release.

## October 13, 2015 "Perl 6 - A Dynamic Language for Mere Mortals" (Perl 6 is almost here: Part 1) - Ovid
 
This month Boston.pm presents a recorded talk by Ovid (Curtis Poe)
with live code examples prepared and demonstrated by Bill Ricker. 
Ovid describes his talk as, "[Perl 6](http://perl6.org/) is a great language,
but sometimes the enthusiasts talk about the crazy, scary things you
can do with it. In this talk, I discuss how easy it is to really use."
 
We'll have working examples in live Perl6 ([Rakudo Perl 6](http://rakudo.org/how-to-get-rakudo/)), both copied from the main presentation to play with immediately on our screen, for kibitzing and tinkering, plus some other examples to try.
 
Program notes:

* We're planning to have several [Perl 6](http://perl6.org/) talks this Fall/Winter, building up to the Perl 6 formal release at Christmas, including:
    - P6 Regex & Grammars
    - P6 Concurrency and Asynchrony
    - If you have any Perl 6 code to share, maybe as a mini talk before main talk, or as an intermission, if it fits with a scheduled p6 talk!
* Anyone with things to talk about at future meetings, contact Bill and/or Tom.

 
About the Speaker

[Ovid](https://twitter.com/ovidperl) ([Curtis Poe](https://fr.linkedin.com/in/curtispoe)) 
is founder of [All Around The World](http://www.allaroundtheworld.fr/), a Perl consultancy based in
France. He specialize in large-scale, database-driven, heavily tested
applications written in Perl. His published works include the book
'Beginning Perl", co-authorship of the book "Perl Hacks", and multiple
technical articles. His testing modules ship in the Perl core.
 

## Sept 8th  - Perl 5.22 new features

Checking out what's new in the newest stable Perl 5. (& lightning survey of latest Modern Perl developments )
 
 
## August 11, 2015 - Social for Ronald Kimball

Ronald Kimball, former Boston.PM "Facilitator" (=leader; 1999-2008) is
relocating out of state. Current and former habitués of Boston.PM will
gather at Sunset Grill and Tap in Allston on our usual Second Tuesday
to send him off in style. There will be swag.
 
 
Current and former habitués of Boston.PM are invited to gather at Sunset Grill and Tap in Allston on our usual Second Tuesday to send Ronald, our former Facilitator, off in style.
 
Ronald wrote :
>  As Uri mentioned on the announcement list, we would like to have a social meeting on Tuesday, Aug 11, so that I can say goodbye to all of you, because I am moving to Minneapolis next [this] month!
>  As an extra enticement, I will be bringing some unclaimed Perl Monger shirts from 2006.
>  (It's been a while since I made it to a meeting, so, for those of you who may not remember me, I was the leader of Boston.pm from 1999 to 2008. :)
>  Ronald
 
 
'''Location''': Sunset Grill and Tap in Allston. 130 Brighton Avenue (at Harvard Ave).
 
## Tue 07/14/2015 E51-376 - NO MEETING

 
## June 9th, 2015 Federico Lucifredi resumes his hardware and Perl series

![Federico](./images/federico_lucifredi.jpg)

A few years ago it was
[discovered](http://www.bunniestudios.com/blog/?p=3554) that common SD
memory cards contain a micro controller that can be reprogrammed. In
this talk Federico hacks "some hardware to see if we can get to the CPU
on an SD card. Any automation in Perl, of course :)"
 
 
 
[Federico Lucifredi](http://www.oreilly.com/pub/au/5017) was the
maintainer of the `man` suite, the primary documentation-delivery tool
under Linux, a graduate of Boston College and Harvard University, and
the Ubuntu Server Product Manager at Canonical. He is a frequent speaker
locally for Boston.pm and [Boston Linux/UNIX](http://www.blu.org/),
often on "hardware hacking" topics.
 

## Tuesday, May 12, 2015 -  Social Gathering - 

 
Scheduling didn't come together for a speaker this month, so we are
opting for a social gathering at
[REDBONES](http://www.redbones.com/), in Davis Square, Somerville. Known
for their barbecue .
Join us for some food and to chat about Perl and whatever else.

*Narrator: Redbones was too full of Tufts Seniors celebrating last finals, so we went to **blue shirt** across the square.*
 


## Tuesday, April 14 "fREW: Miscellaneous Debris: Docker, DBIC, and Dogma"

*Axel "fREW" Schmidt*
 
![Docker logo](./images/Docker-logo-011.png){ width=50% } 

Prolific CPAN author "[fREW](http://search.cpan.org/~frew/) " Schmidt will share his *^Miscellaneous Debris^*:
 
* [Docker](https://www.docker.com/whatisdocker/)
* Tools (vim, zsh, more)
* [DBIC](https://metacpan.org/pod/DBIx::Class) and [DBIC Helpers](https://metacpan.org/pod/DBIx::Class::Helpers)
* drinkup ("an interesting tool I wrote")
* Dogma (my take on other people's dogma and what I think it should be)


![portrait of Alex aka fREW](./images/fREW.png){ width=20% }

Axel "fREW" Schmidt authored or maintains 50
[CPAN](https://metacpan.org/author/FREW) modules, including
[Catalyst::Action::REST](https://metacpan.org/pod/Catalyst::Action::REST)
and [DBIx::Class::Helpers](https://metacpan.org/pod/DBIx::Class::Helpers)
 
## March 10, 2015 - Net::AMQP::RabbitMQ and RabbitMQ - Mike Stemle, Jr.

[Video](https://www.youtube.com/watch?v=bq4B6m3a0H8)(youtube) 
[[file/view/Net__AMQP__RabbitMQ Presentation/543820114/Net__AMQP__RabbitMQ Presentation|Slides]] (pdf)
 
  Mike Stemle, Jr. discusses his experiences at ThinkGeek working on and using [Net::AMQP::RabbitMQ](https://metacpan.org/pod/Net::AMQP::RabbitMQ), an interface library to [RabbitMQ](https://en.wikipedia.org/wiki/RabbitMQ) , an open source message broker that implements the Advanced Message Queuing Protocol (AMQP).
 
 
Being a Perl Shop is hard sometimes, and as a result you sometimes
miss out on some of the super-awesome third party support that other -
some would say, weaker (but of course we wouldn’t say that, we’re
classy) - languages enjoy. So I had to get my hands dirty. As such,
I contributed to the development of the Net::AMQP::RabbitMQ module so
that we at ThinkGeek could properly integrate our Perl applications
with this MQ server.

[![RabbitMQ example routing](./images/RabbitMQ-example-routing.png)](https://www.rabbitmq.com/tutorials/amqp-concepts.html)

I will walk you through a very high level of the integration itself,
some of the challenges we faced, and how we overcame them. I’ll also
go through some of the improvements I’ve made as part of the team of
people maintaining the Net::AMQP::RabbitMQ module. '''BEWARE''', however,
this talk is not for the squeamish. There will be guts. perlguts, and
they’ll be everywhere.


![Portrait of Mike Stemle](./images/Mike_Stemle.jpeg){ width=50% } 

Mike Stemle, Jr. is a Sr. Software Engineer with more than 16
years of professional software experience. He’s worked in early
social media, telecom, advertising, e-commerce, and billing. He’s
written things as small as the first ever web message board for
[farmer.com](http://farmer.com/) and other things as big as billing
systems processing more than 100K transactions per hour.

Hailing from Fairfax, VA he fights the good fight along side
his good pal, Timmy, and all of the amazing folks at [ThinkGeek,
Inc](http://www.thinkgeek.com/). Mike is naturally low in cholesterol,
and only to be used as directed.

These statements have not been evaluated by the Food and Drug
Administration. This product is not intended to diagnose, treat, cure,
or prevent any disease.

You can find out more about Mike Stemle, Jr. here:


* [GitHub Resume](http://resume.github.io/?manchicken)
* [Twitter](https://twitter.com/manchicken)
* [Blog](http://www.manchicken.com/)

 
## February 10, 2015 - CANCELED
 
 
## January 13, 2015 - Review of 2014 Advent Calendar and Releases - Speaker: B.Ricker & Greek chorus
 
Highlights from various Perl advent calendars and similar postings over
the holidays that aim to make you aware of both popular and obscure CPAN
modules. Sources include:

![sample advent calendar numbered grid on a picture](./images/advent_calendar.png)

[Advent Planet](http://www.lenjaffe.com/AdventPlanet/2014/index.html) (aggregates other advent calendars)

[Perl Advent Calendar 2014](http://perladvent.org/2014/)

*    03 Attention Seeking Behavior
*    05 Subroutine by any other name
*    06 Test a naughty or nice DB
*    08 Complexity of Perl
*    10 Foreign Function Interface
*    19 Wrapping Output
*    20 Dumb In-struct-ions
*    24 Out of Order Perl

P6 Advent calendar https://perl6advent.wordpress.com/2014/12/

*    p6-23 sleepsort !?
*    p6-16 Quoting
 
<http://shadow.cat/blog/matt-s-trout/> “mstpan” review of CPAN by category – 15 categories in December, almost a full calendar! Consider it a curated CPAN catalog for epoch 2014/12/xx. Matt's comments on why he likes and dislikes certain modules for different usecases are specific enough that you can decide whether one he dislikes will work for you anyway. 
and blogs. 

**2014 Releases.**

*    **Perl 5.20** <http://perlnews.org/2014/05/perl-5-20-released/> - we viewed demo of Hash Slices and some videos on new Signatures features at June meeting;
*    **Perl 6** 2014.12.1 is **“Early Adopter Release”** <http://rakudo.org/2014/12/26/announce-rakudo-star-release-2014-12/>
     Does that mean it's Christmas ? Not quite. See <http://perl6.org/compilers/features>.
     See also [2015.01](https://p6weekly.wordpress.com/2015/01/05/2015-01-get-ready-to-party/) ; [P6 Timestamps](http://perl6maven.com/tutorial/timestamp), [Bailador is P6 Dancer light](http://perl6maven.com/getting-started-with-bailador)
*    CPAN What's New :
      - [perltricks.com](http://perltricks.com/) Monthly "What's New";
        updated: added their own [Best of 2014](http://perltricks.com/article/145/2015/1/15/The-best-of-what-s-new-on-CPAN-2014) retrospective on 1/14;
      - ["Perl Weekly"](http://perlweekly.com/);
      - [@Perlbuzz](https://twitter.com/perlbuzz) daily.
*   other blogs/aggregators with RSS recommended by Tom and Rickie
      - [Ironman](http://ironman.enlightenedperl.org/);
      - [blogs.perl.org](http://blogs.perl.org/);
      - [PerlSphere](http://perlsphere.net/);
      - [p5p - porters summaries](http://blogs.perl.org/users/perl_5_porters_summaries/);
      - [Perl News](http://perlnews.org/);

h/t Some Calendar recommendations by Jerrad Pierce.


# 2014


## December 9  - "Stirring the Hive with a Perl Stick : Hadoop and Perl" - Charles Hardin

LOCATION: [EIG](http://enduranceinternational.com/our-careers/our-locations/burlington), [10 Corporate Dr #300, Burlington, MA 01803](https://www.google.com/maps/place/Endurance+Int
ernational+Group/@42.495802,-71.193531,17z)
 
![Hadoop Hive Logo](./images/HadoopHive.png)

Hive provides a SQL-like interface to Hadoop. 
Perl can interoperate with Hive in a variety of ways, including Hive
queries through a Thrift API and the direct incorporation
of Perl into map-reduce jobs. 
The author has taken a few baby steps on this journey and chooses to
share the results with his peers.

KEYWORDS: Perl, Hadoop, Hive, Big Data, Thrift, Map-Reduce.
 
This meeting is being hosted by EIG, Sean and Charles's employer.
(A carpool from MIT and/or Red Line will be available for Car-Free commuters, talk to Bill.)
 
(If you can't attend in person, this talk will be broadcast live via [Hangouts](https://plus.google.com/events/c00ofh438nl4forf29v3df8ubio) / [YouTube](http://www.youtube.com/watch?
v=HF_l8fhOPWw) and you can submit questions via IRC or Hangouts Q&A.)
 
 
## November, 2014 -  Mojo, Moo, DBIC - providing a service bridge to Google Apps API - Sean Quinlan

![google-apps-for-work-logo.png](./images/google-apps-for-work-logo.png)
 
Talk it will cover using Mojolicious (web framework), Moo (object framework), 
DBIC (DBIx::Class, most popular ORM for Perl) 
to implement a service bridge between the Google Apps API at Endurance International, 
a leading web and email hosting provider.


## October, 2014 - ShellShock CGI and Perl DoS bugs - Bill Ricker

![Shellshock bug logo](./images/shellshock-red.png)

 
We will examine the implications for the ShellShock BASH bug for Perl --
it's much wider than just about BASH CGI or even Perl CGI scripts --
and also a recently discovered/fixed but comparably long-lurking Perl
DoS bug in a core module (Data::Dumper stack smash CVE-2014-4330) and
how is it possibly remotely triggerable.
 
The good news is ShellShocker was slightly over-hyped; unlike
Heartbleed, this one does NOT generally affect the Internet of
Things. Your Internet-enabled toaster is likely immune. But Windows
and Mac are not entirely immune to this Linux bug.



## September, 2014 - Creating And Managing a Private CPAN with Pinto & Stratopan [Jeffrey Thalhammer](http://search.cpan.org/~thaljef/)

If you use Perl, then you have probably wrestled with CPAN. Shifting
dependencies, incompatible interfaces, and test failures in CPAN modules
can suddenly break your application, leaving your team to chase bugs they
didn't create. But managing CPAN modules doesn't have to be painful. A
private CPAN repository gives you a stable platform for making consistent
builds and managing upgrades for all your Perl modules.

In this session, you'll learn how to use
[Pinto](https://metacpan.org/pod/Pinto) to create a private CPAN and
build your applications with the right modules, every time. You'll learn
about the dangers of the public CPAN and how a private CPAN can help
mitigate those risks. Finally, we'll cover some of the newest features
of Pinto and show you a few power-user tricks to get your private CPAN
up and running quickly.

[Stratopan](https://stratopan.com/about) is a startup founded by the speaker that provides "Private CPAN repositories securely hosted in the cloud." So Pinto is the tool that facilitates creating a private repository, and Stratopan lets you outsource the hosting of that repository.

[Jeffrey Ryan Thalhammer](https://www.google.com/search?client=ubuntu&channel=fs&q=Jeffrey%20Ryan%20Thalhammer&ie=utf-8&oe=utf-8) is a respected software developer, prolific open source contributor, and tech community leader. Author of Perl::Critic and Pinto, used by thousands of developers. Co-founder of Stratopan and Co-organizer of the San Francisco Perl Mongers. He consults under the brand [Imaginative Software Systems](https://www.linkedin.com/company/467266).


## August, 2014 - skipped

Skipped for summer vacations.

## July, 2014 - Offensive & Defensive Web User Identity -  Zak Zebrowski

(Zak appeared remotely via Hangouts)

 
This talk looks at web users from a two different perspectives: First,
we look at identifying techniques to determine web user identities from
a server perspective. Second, we will look at obfuscating techniques from
a user whom seeks to be anonymous. Perl techniques will be highlighted.
 
Link for materials : [has links to 4 hour HD video (stream/download) from 1 day class
  and materials (choice PPT, ODP, PDF) (courseware](http://opensecuritytraining.info/WebIdentity.html]) [CC-BY-SA-3.0](http://creativecommons.org/licenses/by-sa/3.0/)

Demos: <http://zak.freeshell.org/course/lab.html>
 
(If you can't attend in person, this talk will be broadcast live via
[Hangouts](https://www.youtube.com/watch?v=ljdHUbjnWpw) and you can
submit questions via IRC.)
 
'''Zak Zebrowski''' is a MITRE data miner, specializing in forensic
database analysis. He is interested in all things Perl, and enjoys
teaching. He loves being outside when he's not programming.
 
## June, 2014 - Selenium; Perl 5.20
 
Two short talks:

### Ricky Morse presents automation of web browsers with Selenium::Remote::Driver.

[Selenium](https://www.seleniumhq.org) "is a test tool that allows
you to write automated web application UI tests in any programming
language against any HTTP website using any mainstream JavaScript-enabled
browser. This module is an implementation of the client for the Remote
driver that Selenium provides." - [pod](https://metacpan.org/pod/Selenium::Remote::Driver)


### Bill Ricker demonstrates new features in the recently released Perl 5.20, including List::Util updates.

* <https://metacpan.org/pod/release/RJBS/perl-5.20.0/pod/perldelta.pod>
* <https://metacpan.org/pod/release/RJBS/perl-5.20.0/pod/perldelta.pod#Experimental-Subroutine-signatures>
* <https://metacpan.org/pod/perlsub#Signatures> YAPC video ["Getting to Signatures"](https://www.youtube.com/watch?v=YvnIcLc2Nrs)
* <https://metacpan.org/pod/release/RJBS/perl-5.20.0/pod/perldelta.pod#New-slice-syntax>
* <https://metacpan.org/pod/perldata#Key-Value-Hash-Slices>
* <https://metacpan.org/pod/release/RJBS/perl-5.20.0/pod/perldelta.pod#Experimental-Postfix-Dereferencing>
* <https://metacpan.org/pod/release/RJBS/perl-5.20.0/pod/perldelta.pod#Deprecations>
* <https://metacpan.org/pod/perlpolicy#discouraged>.
* '''Module::Build removed''' <https://metacpan.org/pod/release/RJBS/perl-5.20.0/pod/perldelta.pod#Module-removals> Module::Build deprecated - comments of current and former maintainers -
  Video [Replacing Module::Build By Leon Timmermans (leont)](http://act.yapc.eu/ye2013/talk/4804);  [Obit for M-B](http://www.dagolden.com/index.php/2140/paying-respect-to-modulebuild/).
*  '''List::Util''' [New Maintainer's blog](http://leonerds-code.blogspot.co.il/2014/06/listutil-additions-in-perl-520.html) <https://metacpan.org/pod/List::Util#KEY-VALUE-PAIR-LIST-FUNCTIONS>
*  '''New easy OO CSV''' <http://search.cpan.org/~hmbrand/Text-CSV_XS-1.09/CSV_XS.pm#csv> (see also his [NLPW2014 video](https://www.youtube.com/watch?v=24LGPZ5ODAw) not viewed at meeting)
 
## May, 2014 - Ricardo Signes' 1.21 Gigawatts


Ricardo Signes (pre-recorded in NY, with live Q&A via Hangouts)

A collection of the speaker's lightening talks, in the spirit of a highlight reel. 
We replayed a recording of [Ricardo's talk to NY.pm](https://www.youtube.com/watch?v=iG4fQUrkyK8), 
after which Ricardo joined us by tele-presense for '''live Q&A''' .)
 
Some talks carefully guide the listeners through the entirety of a topic,
starting with the basics and ending with the fine details. That's… not
the plan for this talk. Instead, we're going to see the highlight reel of
a bunch of topics that caught my interest over the course of the year:
a review of cool (and uncool) changes in Perl, the best modules you're
not using, stupid optimization tricks, tools for handling catastrophic
program failure, git scripts you'll become dependent on, numbers stations,
Zork, productivity tools, and who knows what else.
 
I will stand in place and let lightning talks strike over and over, until I am reduced to cinders.
 
You get to witness the ordeal, and you might just learn a thing or two.
 
We had a partially successful experiment with a "Hangout On Air" to broadcast the **Q&A portion** of this presentation: [youtube](https://www.youtube.com/watch?v=iG4fQUrkyK8)
 
And the bio:
 
Ricardo Signes is the current project manager for Perl 5, a maintainer of
the CPAN toolchain, part of the Moose development team, and a frequent
contributor of other free code to the CPAN. He likes to talk about
code almost as much as he likes to write it. He lives in Bethlehem,
Pennsylvania, and works at Pobox.com, where he spends his days trying
to cope with the horrors of email.
 

## April, 2014 - DBIx::Class & Data::Query & Deck (Video replay)
 
Video replay presentation with group discussion as emergency substitute. 
(Our group discussion adds value to anything!)
 
Choice of :
 
* '''"Unicode Programming in Modern Perl"''', Nick Patch (ex Boston!), NY.pm
* '''DBIx::Class & Data::Query''' TPM Feb, Matt Phillips 0:30
* '''Deck, experimental language''', TPM Feb, Chris Reuter
* '''"Building Scalable, Distributed Job Queues with Redis and Redis::Client"''' (from 2012) Mike Friedman.

## March, 2014 - Interesting Small Scripts
 TOPIC: Interesting Small Scripts
  DATE: March 11, 2014
  TIME: 7:00 – 10:00 PM
  ROOM: E51-372
  SPEAKER: Bill and chorus
 
  (notes to appear later)
 
 
## February, 2014 - Parsing weird LRECL data - Uri G "The PerlHunter"

*Parsing the weirdest fixed-record-length format you've ever seen!*

 
"at my new job i have created a parser for a very clunky fixed record
size format. it took longer than anticipated for various reasons. i have
a parser module, some db tables to help in real world stuff, a bunch of
one off scripts that did useful stuff. could be interesting to see how
such a project is done.

well, it was interesting to me as i was paid for it! a chance to code
review my stuff and show some nice slicing (perl slicing) and dicing
of data."

Followup discussion in
[mailinglist](http://mail.pm.org/mailman/listinfo/boston-pm) 
 

## January, 2014 - Deduplication Hackathon - Panel

A recap of the DFW Perl Mongers Deduplication Hackathon



SPEAKERS: Joel Berger, Tommy Butler, Yanick Champoux, Bruce Gray, Tim King

MODERATOR: Tom Metro

 
How fast can Perl find duplicate files on a 100 GB file system? That's the
question the '''Dallas/Fort Worth Perl Monger's Winter 2013 Deduplication
Hackathon''' set out to answer. There were a diverse range of contest
entries, from the expected procedural Perl 5 code to ones that used Moose,
MOP, and even one Perl 6 entry.
 
Tom Metro will moderate a collection of prerecorded and live
lightning talks by the contestants. After a brief intro, we'll hear
from Bruce on his 6-line Perl 6 entry, from Tim (live in person)
with his comprehensive MOP based solution, from Joel with a classic
Perl 5 procedural solution, from Yanick with the officially winning
solution built with Moose (yes, the fastest used Moose!), and lastly
from the DFW.pm leader and contest organizer Tommy (live via Google
Hangout) with his unofficial Moose based solution, that post-contest,
was further tuned to beat everyone. Lastly, we'd like to hear from
the audience what you'd like to see as the topic of a future hackathon.

If you couldn't make it to the meeting, you can find most of the materials online.

The original [DFW.pm meeting recording](http://www.youtube.com/watch?v=HvqqRFGMZS0).

You'll find Bruce Gray's Perl 6 entry discussed at time range 17:29 -
35:30. Joel Berger, who won for lowest memory, fewest lines of code,
and best Perl::Critic score, introduces himself at 10:54 - 12:48, and
then discusses his code at 1:06:10 - 1:21:01.

Tim, who won for best documentation, most features, and best effort,
discusses his code after Bruce, but I don't have the time index.

In a [separate video](http://www.youtube.com/watch?v=7MNuNupAvvg),
Yanick Champoux, the winner for fastest run time, discusses his code.

Tommy Butler, the contest organizer, discussed his unofficial entry
towards the end of the first video above. (At the Boston.pm meeting he
elaborated on some of the optimizations he added post-contest, leading
to a design that beats Yanick by 40 seconds.)

The original [contest specification](http://dfw.pm.org/hackathon.html).
The [results](http://dfw.pm.org/winners.html), including a leaderboard of winners.

And finally, the code...

* [reference code](https://github.com/tommybutler/dupfind)
* [Joel Berger](https://github.com/jberger/DeDuperizer)
* [Tommy Butler](https://github.com/tommyprivate/dupfind)
* [Yanick Champoux](https://github.com/yanick/dfw-contest)
* [Tim King](https://github.com/JTimothyKing/Data-Dedup)
* [Joakim Lagerqvist](https://github.com/jokke/Dedup-Hackaton)
* [Reini Urban](https://github.com/rurban/App-finddups-bloom)




# 2013

## December 10, 2013 - Tim King - Benchmarking Perl6 vs Perl5

* Perl 6's suitability for "production." (Your definition may vary.)
* Experiences of the state and stability of Rakudo.
* Benchmarks of my favorite P6 features. 
* Lines of P6 code from everyday life. 
* Some comparisons of P6 with P5.

[slides](http://sd.jtimothyking.com/tag/perl-6/)

## November 12 - A new object system for the Perl 5 core. -  Stevan Little


In 2011 I started working on a project to improve the object system in Perl 5.
I wanted to take elements from Moose, as well as bring in some more
elements of the Perl 6 object system.
The first version of this work ended up suffocating under its own
complexity, but after this year's YAPC::NA I decided to come back to the
project with a fresh perspective and so far work is progressing very well.

In this talk I will walk through several examples of the proposed syntax
and feature set as well as discuss some of the underlying implementation
details. This will be an interactive talk and audience members are
encouraged to ask questions, poke holes in the design and help improve
the proposal.

If you missed this talk, you can watch an 
[earlier (and shorter) version](https://www.youtube.com/watch?v=Gf0O6Ct7V1s) 
courtesy of NY Perl Mongers.


## October 8 - Review and Discussion of recent Perl blog topics - Bill and G(r)eek Chorus

Targets of opportunity:

* Perl Guts [optimizations](http://hoelz.ro/blog/perl-5-internals-part-one optimizations) in parallel with [illustrations](http://search.cpan.org/dist/illguts/) 
* [Factoring Integers in Perl](http://blogs.perl.org/users/dana_jacobsen/2013/04/factoring-integers-in-perl.html)  
* [How to Identify Clunky Perl 5 Code](http://www.modernperlbooks.com/mt/2013/04/how-to-identify-clunky-perl-5-code.html)
* [sregex](https://github.com/agentzh/sregex) (GitHub) — A non-backtracking regex engine library for large data streams. See also [slide notes from a YAPC::NA talk](http://agentzh.org/misc/slides/yapc-na-2013-sregex.pdf). (via [Ivan Ristic](https://twitter.com/ivanristic/status/341836727243116545))
* [Bobby Tables: A guide to preventing SQL injection](http://bobby-tables.com/)  (yet another public service by petdance=Andy Lester)
* [Some Perl-Related Bugs and How They Were Fixed](http://blogs.perl.org/users/shlomi_fish/2013/06/some-perl-related-bugs-june-2012.html)  (Shlomi_fish)
* [Perl::Critic](https://twitter.com/perlcritic) Wherein [@briandfoy_perl](https://twitter.com/briandfoy_perl) announces his [New Policy project](http://www.programmingperl.org/2013/10/camel-perlcritic-policies/)

and general news sources:

* <http://blogs.perl.org/>
* [Perl Buzz](http://perlbuzz.com/)  = [@perlbuzz](https://twitter.com/perlbuzz)
* [chunky code](http://www.modernperlbooks.com/mt/2013/04/how-to-identify-clunky-perl-5-code.html) <http://www.modernperlbooks.com/> (chromatic)
* [http://www.effectiveperlprogramming.com/] (brian d foy)
* <http://perlweekly.com/>
* <http://lists.perl.org/list/perl5-porters.html>
* <http://perlnews.org/>


## September 10 - Patching and Updating a CPAN Module - Bill R

*Bill Ricker and Tom Metro (remotely)*

Boston.pm adopted one of Damian's PBP modules, Config::Std. It was broken by Perl 5.18's security patch to randomize hash ordering. Debian Unstable reported the [https://rt.cpan.org/Ticket/Display.html?id=85956 bug] (glad to know they're doing Perl 5.18 and packaging Config::Std!) and provided a patch. Ricky made sure the patch didn't invalidate Damian's design.<br /> <br /> 

## August Social At Cambridge Brewing Co

## July 9 Inline::Java (Perl and Java, together at last ?)


*William Cox and David Larochelle on Using Inline::Java with Perl*

This talk is a report on inquiry begun on the [mailing list](http://www.mail-archive.com/boston-pm@mail.pm.org/index.html#07176)
[slide deck](https://docs.google.com/presentation/d/1nWaw6ER0yuh0dtHWDVETaGLe1GFCQ71kynyeN_-VEmM)
[Blog](http://blogs.law.harvard.edu/dlarochelle/2013/07/14/inlinejava-using-java-with-perl/)
 
Q “There is a question that the slides don't address which I am curious about -- why didn't you just use Java & Java-based languages? 

A. “each had major existing workflow in perl.one needed to fetch data only available with java api, other needed algorithm only with java api.”

A. “Exactly. Our ORM is in Perl. Also, I did in 1 file of Perl what
Java would require in 10s. The need to maintain simplicity was important
for my group. You have to follow the business requirements laid before
you. A lot of my group writes Perl. The rest of engineering writing
the customer facing stuff writes in Java. We mainly communicate over a
database (read: not realtime). But there is the occasional bleed over
from Java land that we have to implement the exact same code on our end
as which ships in the product. But our framework is (largely) Perl. So
we glue the 2 together. And as engineers, "good enough" is perfect.

Some data points for "good enough:"

1. I can scan a Maven repo for updates in under an hour

2. I can apply a in-house algorithm to a directory structure in sub-second time”

## June - Canceled

## May 14, 2013, MIT E51-376 

*Greg London*, [**Parse::Gnaw**](https://metacpan.org/dist/Parse-Gnaw/view/lib/Parse/Gnaw.pod)

> It is a revamping of the module. The previous version had
some issues like blowing up on recursive grammars.

> Version 0.600 solves this problem by rearchitecting the code.

> A cool new feature of the module: parsing multi-dimensional text blocks, not just one dimensional text.

[full announcement](https://www.mail-archive.com/boston-pm-announce@mail.pm.org/msg00294.html)

(*This is a follow-up on Greg's Feb 2009 talk.*)

## April 9, 2013, MIT E51-376 

### Embedded Perl with Federico

Federico Lucifredi continues his quest to build a hardware-assisted automagic hard-drive wiper, using perl in an embedded device. Shiny hardware! Demo! Code! 

## March - canceled 
 
## February 12 - Uri releases a module

Uri Guttman spoke on how to release a module to CPAN. 
Uri showed us how his old to him new to CPAN module is packaged to go.

This is our chance to heckle Uri. Be there! It's fun!

## January - Canceled

# 2012

## December 11, 2012, E51-372 

## speaker Scott Mattocks

### topic  “treat your code like a member of the dev team.”

“You expect your developers to communicate well; you should expect
your code to communicate well. You expect your developers to continue
working when things go slightly wrong; you should expect your code to
continue working when things go slightly wrong.  The core message is
language neutral. The real-world lessons that contributed to the
creation of this presentation come from GSN where we use both Perl and
PHP on a daily basis. The presentation itself (see below) has some PHP
code snippets in it, but swapping those out for Perl is easy and won't
change the subject matter. Feel free to flip through (using left and
right arrow keys). If you think this is something the group can
benefit from, let me know and I will start rewriting the code blocks.”



## November 2012 canceled 

## October 9, 2012,  E51-372 

David Larochelle  [Carton](http://search.cpan.org/perldoc?Carton) and [Perlbrew](http://search.cpan.org/~gugod/App-perlbrew-0.52/lib/App/perlbrew.pm)

 
## September 11, 2012,  E51-372 

Adam Russell, PDL - The Perl Data Language 

"PDL is the Perl Data Language, a perl extension that is designed for scientific and bulk numeric data processing and display. It extends perl's syntax and includes fully vectorized, multidimensional array handling, plus several paths for device-independent graphics output.
  "PDL is fast, comparable and often outperforming IDL and MATLAB in real world applications. PDL allows large N-dimensional data sets such as large images, spectra, etc to be stored efficiently and manipulated quickly."

[PDL](http://search.cpan.org/search?mode=all&query=pdl)


## May 8, 2012, E51-372 

*Ricky Morse Getting Started with Plack/PSGI*

This talk will be a short overview of developing simple Plack/PSGI websites and making them run in CGI or proxy environments.




## April 10,  E51-372 - Revisiting the Dread CGI -- The Uri 

CGI refactored before and after 

As many of you have known and seen, Uri Guttman will do code review on the fly with anyone's code on display at pm meetings. This may seem frivolous or whatever but it is can be useful in many cases. He has a client for his Perl support/training services which entails lots of code and design review and it has proven very valuable to this shop. He has obtained permission to show one CGI script in its before any review state and after much review and refactoring. The author of the script did almost all of the editing and rewriting but for one sub rewrite that Uri did because it was more complex than the author could handle. The script went through 14 revisions and it still isn't where it should be (that means using a proper template module like Template::Simple) but it is light years from where it was. This talk is being called before/after. You will see some of the worst coding and template practices ever unleashed at a Boston.pm gathering. You will be in shock at the use of globals, the lack of subs, and the redundant everything everywhere. Then the tranquility of the after version will calm your senses, sooth your jangled nerves and show you there really can be order in this chaotic universe. Be prepared for coding hell and heaven! Fun is guaranteed for all!





## Tuesday March 3/13 (day *before* Pi Day )

*Scripting Ubuntu in Landscape* -- Federico Lucifredi

Canonical's systems management and monitoring tool, Landscape (Landscape.canonical.com) has multiple facilities for scripting to the system administrator' content -- facilities that can be used with any of the usual array of scripting language choices.  We will take a quick look at scripting the managed clients, then we delve into programming the Landscape API to script automation tasks from the shell, in effect, scripting the server, and how this allows custom integration of multiple tools.


## FEBRUARY IS CANCELED

Apparently something else happens on 2/14, important in the dominant culture.

## January 10, 2012  E51-376

David Larochelle explained the "new" multi-language web Denial of Service (DoS) threat that doesn't affect Perl (but affects Python & PHP). 

References - search for 

* advisory28122011.pdf
* !CVE-2011-4885
* Reported 2003 CrosbyWallach_UsenixSec2003.pdf
* Fixed in Perl 2005 - perldoc perlsec.html under Algorithmic-Complexity-Attacks

# 2011

## December 13th 2011 SOCIAL Cambridge Brewing Co.

## Tuesday November 8th     E51-372

Perl community news.  Also any lightning talks.

## Tuesday October 11;     E51-372

Sean Quinlan presenting his and Adam Flott's new configuration management framework [Thorium](https://metacpan.org/pod/Thorium). (Meeting sponsored by CIDC, Sean was hiring.)


## Tuesday September 13    E51-372   

Perl community news. 
Follow-up list of links http://article.gmane.org/gmane.comp.lang.perl.perl-mongers.boston/5473 
and lightning talk:
* Jerrad : no clobber;

## July 13, 2011    E51-372

Perl 5.14
Note for summer we're in a different room.


## August 9, 2011 7:00 p.m. – 10:00 p.m. E51-372

Social meeting 

## June 14, 7:00 p.m. – 10:00 p.m.  E51-*372*

Steve Scaffidi - YAPC preview -  - AnyEvent lessons-leaned


## May 17th 2011 *social meeting*

Randal "Merlyn" Schwartz

## May 17th 2011 *tech meeting*

Uri presents Perl Code Generation Techniques, aka
       when perl begat perl
               or
       the bible on code generation



## April 12, 2011    E51-376  



## March 8, 2011    E51-376  


## Feb 8th 2011 *social meeting*

uri writes on list,

ok, i made an executive decision. tad (Tad McClellan, out of town monger)
and i will be having dinner at the
foundry in davis sq tomorrow night at 7pm. if you want to come, let me
know so i can make the right size reservation. i have been there a



their menus link seems to go to tumblr.com and not show anything useful.
they have very nice reviews on the usual food sites.



## January 11, 2011   E51-376

Bill presented Using Perl 5.10 and Perl6 Rakudo on a cryptogram  

# 2010

## Tuesday December 14th, 2010

Bob Rodgers presented Graphics in Perl, using Bio::Perl for hobby use, and generating !SVGs from bio data.

## Tuesday November 9th, MIT E51-376 7pm

Social meeting

## Tuesday October 12th, MIT E51-376 7pm

Open mike / Stone soup

## Tuesday September 14th, MIT E51-376 7pm

"Rakudo Star - a useful, usable, 'early adopter's distribution of Perl 6"

 "Rumors of my death are greatly exaggerated" -- Mark Twain 

Curious what the Perl community has been up to lately? Come see Perl 6's recent preview release.



Since July, Perl Mongers groups around the world are doing demo nights to build and exercise Rakudo Star.  Boston.PM's turn is September 14th, MIT  E51-376 7:30pm (refreshments in hallway at 7). {This is the night before BLU's PGP night, second Tuesday is as late as it gets this month.}  We'll install it and show what it can do. We may discuss what more the final release candidate will do, and if  enough non-regulars turn up, we can discuss what's in 5.12 that's not in the 5.8.4 or older that's still on many commercial Unix systems 






> Announce: Rakudo Star - a useful, usable, "early adopter" distribution of Perl 6
> Submitted by pmichaud on Thu, 07/29/2010 - 05:18

> On behalf of the Rakudo and Perl 6 development teams, I'm happy to announce the July 2010 release of "Rakudo Star", a useful and usable distribution of Perl 6. 

> Rakudo Star is aimed at "early adopters" of Perl 6. We know that it still has some bugs, it is far slower than it ought to be, and there are some advanced pieces of the Perl 6 language specification that aren't implemented yet. But Rakudo Perl 6 in its current form is also proving to be viable (and fun) for developing applications and exploring a great new language. These "Star" releases are intended to make Perl 6 more widely available to programmers, grow the Perl 6 codebase, and gain additional end-user feedback about the Perl 6 language and Rakudo's implementation of it.

> In the Perl 6 world, we make a distinction between the language ("Perl 6") and specific implementations of the language such as "Rakudo Perl". "Rakudo Star" is a distribution that includes release #31 of the Rakudo Perl 6 compiler, version 2.6.0 of the Parrot Virtual Machine, and various modules, documentation, and other resources collected from the Perl 6 community. We plan to make Rakudo Star releases on a monthly schedule, with occasional special releases in response to important bugfixes or changes.

> Some of the many cool Perl 6 features that are available in this release of Rakudo Star:

    * Perl 6 grammars and regexes
    * formal parameter lists and signatures
    * metaoperators
    * gradual typing
    * a powerful object model, including roles and classes
    * lazy list evaluation
    * multiple dispatch
    * smart matching
    * junctions and autothreading
    * operator overloading (limited forms for now)
    * introspection
    * currying
    * a rich library of builtin operators, functions, and types
    * an interactive read-evaluation-print loop
    * Unicode at the codepoint level
    * resumable exceptions

> There are some key features of Perl 6 that Rakudo Star does not yet handle appropriately, although they will appear in upcoming releases. Thus, we do not consider Rakudo Star to be a "Perl 6.0.0" or "1.0" release. ... 

- http://rakudo.org/node/75 announcement
- http://github.com/rakudo/rakudo
- http://parrot.org/


## August 10, 2010 E51-376 

Nick Patch will present some of Ingy döt Net's recent Acmeist projects, TestML and JSYNC, and his experience porting them to Perl 6 with Ingy. Detailed abstract to follow. [for now see Ingy's notes http://blogs.perl.org/users/ingy_dot_net/2010/07/rakudos-really-really-release-ready.html] 


## July 13, 2010  E51-376

* Steve S (hercynium) 'Getting out of CPAN dependency hell, and staying out.'

http://perl.scaffidi.net/home/cpanhell

## June 8, 2010  E51-376

Postponed to July

## May 11, 2010  E51-376

* Federico doing disk clear with Perl and hardware

## April 13  E51-376

*  Adam - Enlightenment gui api in Perl
** Quick Enlightenment window manager and library introduction  (http://www.enlightenment.org/ )
** Binding the Enlightenment Foundation Libraries to Perl With XS and Why XS Wasn't as Scary As I Thought  (http://search.cpan.org/dist/EFL/ )
** Cutting Corners With Dist::Zilla and Releasing to CPAN  (http://search.cpan.org/dist/Dist-Zilla/ )


## March 9  E51-376

* Bill and ensemble - maintaining a CPAN module

Boston.pm acting through Bill Ricker with Tom Metro as backup have adopted Damian Conway's module  [Config::Std  http://search.cpan.org/dist/Config-Std/], which has a long RT bug queue most of which are fixed in CPAN but not closed, some documentation gaps, and a few real bugs. Bill will report on what steps are needed to enable that, and we'll see progress as a demo. 

folks are encouraged to bring a laptop preferably with git or a diff capable of creating patch files so you can contribute to fixing perldoc.

## February 9  E51-376

Controlling git with Perl. Steve S

the conclusion of our source / revision control series. With added Perl goodness !

    * gitolite
    * gitweb

## January  12, 2010  E51-376


* *mvhub*, web directory of social services 
- perl some modules launchpad bzr for ngo See:
**http://launchpad.net/mvhub
**http://northshoreport.org

* Modules to touch on:
** Devel::Cover
** WWW::Mechanize
** HTML::Template
** CGI::Application
** Lingua::Stem::En
* Presenters 
** Dan MacNeil, Lee Goodrich, Steve S ???

# 2009

## December 8, 2009  E51-376 

**Topic -  Stone Soup / Lightning talks / or the dreaded PowerPointKaraoke**

list of good perl stuff on that page remains available for filler talks


## November 10, 2009  E51-376 

* RT 3.8 end Extensions


## October 13, 2009  E51-3    

* Using Benchmark.pm for comparing two templates.
* Steve S & Uri G
  

##  Tuesday, Sept 8th, 2009, 7:15 E51-376

* Open Street Map and Perl 

Tuesday is a day early this week, and the 8th is as early as the Boston Perl Mongers can fall. After the as late as possible Labor Day, this is about pessimal. However we do it anyway. We have our usual room for fall.

Our speakers are Shankar Viswanathan and Lars Ahlzen from the Open Street Map project. 
 http://www.osm.org

## July 14 7:15 E51-376

* YAPC recap
** <http://yapc10.org/yn2009/wiki?node=PresentationSlides>
** <http://www.google.com/search?hl=en&safe=on&q=yapc%3A%3Ana%3A%3A2009+slides&aq=f&oq=&aqi=>


##  June 9 7:15 E51-376

* a survey of Perl IDE tools. 
** Uri suggests Emacs perl mode. 
**  a survey of all IDE/editor options -
**  who wants to present Eclipse? [Padre Perl IDE http://padre.perlide.org/] ? Komodo?

## May 12, 7:15 PM - MIT E51-376

* *perl as an aid in developing embedded systems software*
* a domain specific language 
* *Jonathan Finger*

##  April 14, 7:15 PM - MIT    E51-376   _back in our *home* room_     

* *Git primer and workshop*
* *Steve Scaffidi* 
 
My idea is pretty simple - I would like to do a tutorial-style workshop
where people can follow along on their laptops to use git and see it in
action.

I would cover the following:

* Core concepts (~15 min)
* Getting started (~25 min)
* Working alone with git (~20 min)
* Working with others with git, the traditional way (~20 min)


##  March 10, 2009, 7:15 ROOM E51-335 

* *Embedded Perl - Hacking the WD Mybook 2 with Perl*
* *Federico Lucifredi*
      o Building a cheap and very compact Linux NAS appliance
      o Polishing it with Perl glue

> "I am using Perl glue to put together a cheap and small Linux NAS from the Western Digital MyBook II - there are a bunch of hackers doing this, but I wanted mine to have a certain "detail" and so some scripting here and there was required to make it happen - obviously in Perl.

> "It may be too optimistic, and certainly smaller in scale, but the WDMBII is starting to spawn a little community movement similar to the Linksys WRT54G." 

## February 10, 2009 7:15 room  E51-335 

[Parse::Gnaw](http://search.cpan.org/search?mode=all&query=Parse%3A%3AGnaw)  
*Greg London*

**  how to create grammars 
** how the internals actually work

"I should have a fairly stable version of Parse::Gnaw by (then)."



## January 13, 2009 7:15 room _E51-376  one last time_

*Table Driven Testing* - *Uri*
As seen in [Sort::Maker](http://search.cpan.org/src/URI/Sort-Maker-0.06/t/common.pm)

"and i keep saying i will also be covering template::simple's compiled
template features. between that and the table driven testing, i can
waste^Wfill up plenty of time." - uri

# 2008

## Social Meeting - Tuesday December 9 @ Redbones

The votes are in.

> RedBones++

RedBones Wins. No meeting at MIT this month. Meet at RedBones, usual 7-7:15 time, near Davis Sq T. there is public parking metered lots but plan to circle for a while.

55 Chester St Somerville, MA 02144 (617) 628-2200 


## November *18*, 2008, 7:15  E51-376 

* Note *date - week late* since 2nd Tuesday is a *Holiday*
* [Advent Calendar](http://perladvent.pm.org) PSA / Jerrad gave a public service announcement on the Advent Calendar project. Volunteer! get writing! aka advent.pm.org 
* time_t, magic numbers, old school bit-hacks, and Perl. 

Bill Ricker gave a talk meandering through un/pack(), time_t, magic numbers, and
old skul bit-banging entitled  "Magic Numbers & Un/Pack / a use.perl.org magical mystery tour". 
Slides are posted at (remove spaces)
`http : / / world . std . com / ~wdr / x / pm/magic/magic_pack_tour.pdf`
This Free-software generated PDF (!OOo 2.3) should be viewed with a
genuine Adobe reader as Evince and Xpdf get the overlays wrong. Perl
scripts are in same directory as the html as is a tarball.

To answer the Question from the floor, Ilya'o'clock willbe just before
Solstice and just before our normal date for January.

 ILYA  Sat Dec 20 02:32:33 2008 GMT . Fri Dec 19 21:32:33 2008 ET
 Ilya  Tue Jan 13 11:22:09 2009 GMT . Tue Jan 13 06:22:09 2009 ET



Refreshments provided by our kind sponsor CIDC.com ; be Sure to
mention Boston.PM when you send them a resume.

## October 14, 2008, 7:15 *E51-149*

Stone Soup / Lightning talks / or the dreaded PowerPointKaraoke
    - [c2fit](http://search.cpan.org/search?query=c2fit&mode=module) and [fitnesse](http://fitnesse.org/FitNesse.OneMinuteDescription)
    - [Parse::RecDescent](http://search.cpan.org/search?mode=all&query=parse-recdescent) to validate config syntax or complex parse legacy data
    - [Global banking crisis ](http://venturebeat.com/2008/10/10/the-sequoia-rip-good-times-presentation-get-your-copy-here/)

We didn't wind up forcing PowerPointKaraoke on anyone, so the list of good perl stuff on that page remains available for filler talks


## September 9, 2008, 7.15  Tech Meeting E51-376 

* CIDC, refreshment sponsor, wants your resume. Tell 'em Boston.PM sent you if you oblige.
* Easy cryptanalysis with tr, s, and /usr/dict/word. Bill Ricker

## August 12, 2008, Tech Meeting E51-376

Jerrad Pierce

* Topic (1) [Perl Module Advent Calendar](http://perladvent.pm.org/) call for authors 
* Topic (2) Data::JavaScript code review / repair-a-thon [Data::JavaScript](http://search.cpan.org/search?query=Data-JavaScript&mode=module)

## July 15, 2008, Tech Meeting E51-376 (*3*rd Tuesday)

* Topic: Ack-athon 
    - Uri and Bill have been working on Andy Lester's [ACK](https://beyondgrep.com) coders-grep tool, and this will be a collaborative redesign of the inner loop.
* Due to 4th of July holiday weekend being popular for straddling vacations, and the 8th being earliest possible 2nd Tuesday, we're pushing out a week. 



## July 8, 2008, SOCIAL at Sunset Bar + Grill

## June 10, Tuesday, Tech Meeting


Uri Guttman will present a quiz exploring people's thoughts on programming.

## May 13, Tuesday, Tech Meeting


Bob Rogers gave a talk on Advanced Control Structures in Parrot.

## April 8, Tuesday, Tech Meeting


Ronald Kimball gave a presentation on doing a weighted shuffle.

## February 12, Tuesday, Tech Meeting


Martin Owens presented [XML::Validate::XSD](http://search.cpan.org/~doctormo/Data-Validate-XSD-1.03/).  

## January 8, Tuesday, Tech Meeting


Mitchell Charity gave a brief presentation on his idea to quickly bootstrap a Perl 6 implementation via Ruby.

Ronald Kimball led a long discussion of new features in [Perl 5.10.0](https://perldoc.perl.org/5.10.0/perldelta).

Bernardo Rechea presented his CD-ripping program that uses some of the new 5.10 features.

# 2007

## November 13, Tuesday, Social Meeting - Boston Beer Works, Fenway

[Boston Beer Works](http://www.beerworks.net)

Technical recruiting firm JohnGalt Staffing bought us a round of drinks.

## October 9, Tuesday, Tech Meeting


Ronald Kimball presented several fun obfuscations found on Perl Monks.

Jerrad Pierce discussed the upcoming [Perl Advent Calendar](https://perladvent.org/) for [2008](https://perladvent.org/2008/). 

## September 11, Tuesday, Tech Meeting


Ronald Kimball gave an overview of [**ack**](https://beyondgrep.com).

Sean Quinlan gave an introductory talk on [HTML::Mason](https://metacpan.org/pod/HTML::Mason). 

We had open discussions on several topics, including Perl job opportunities, academic interest in Perl, and the state of Perl 6.

## August 21, Tuesday, Social Meeting, CBC

[Cambridge Brewing Company](http://www.cambrew.com)

The appetizers for this meeting were sponsored by JohnGalt
Staffing, a technical recruiting firm that is looking for talented Perl
programmers to fill positions with its clients. 

## July 10, Tuesday, Tech Meeting


Kee Hinckley gave a presentation titled "Object Oriented Design on the Fly - OR- Programming Without a Net"

  It's the wrong way to work, but what techniques can you use to build a
  reusable object framework when the schedule gives you no time to design
  one up front?

## June 12, Tuesday, Tech Meeting


Ronald Kimball gave an introductory talk on Toolkit::Template, based on his experience using it over the past month.

Uri Guttman gave an informal presentation on his CMS::Simple and Template::Simple modules.

Ronald Kimball also offered a quick look at [LOLCode http://www.lolcode.com].

This was our first tech meeting sponsored by 
Cambridge Interactive Development Corp!  
(Sean Quinlan began the meeting by talking about what CIDC does 
and the Perl positions they're looking to fill.)  
Thanks CIDC!     


## May 8, Tuesday, Tech Meeting


Greg London gave a talk based on his book, [Bounty Hunters (Metaphors for Fair Intellectual Property Laws)](http://www.Greg London.com/bountyhunters/). 

> The metaphors we use to describe the abstract concept of intellectual
works bring along their own set of baggage. The metaphor of "property"
automatically invokes the idea of "owner" and "theft" and "pirate". But
some metaphors describe reality better than others. This book introduces
the metaphor of authors and inventors as Bounty Hunters. The public
offers a bounty to any individual willing to create some as-yet-
undiscovered work. Creators provide a "service" in the same vein as a
Bounty Hunter provides a service of catching bad guys.

## April 10, Tuesday, Tech Meeting


**Guillermo Roditi** gave talk entitled ***WebApps using Perl and Reaction***:
"A showcase of the Reaction MVC system  through an example application,
Prefab. The Presentation will focus on harnessing emerging technologies
(Moose, Catalyst, DBIx::Class) to create a smart framework that
allows developers to quickly develop complex, security aware web-based
applications. The talk will include no mention of Ajax or Web 2.0 type
stuff, instead focusing on the technologies driving the server-side and
the methodologies and design decisions behind them."

**Jason McIntosh** gave a presentation on *Volity*: "Volity is an open
platform for online multiplayer games. Volity itself is a set of
language-independent protocols based on Jabber, but much of its current
implementation relies on Perl. There are also libraries on CPAN that
let you create new Volity game parlors with Perl."

## March 13, Tuesday, Tech Meeting


**Jesse Vincent** gave his intro to Jifty talk.  

**Sean Quinlan** give a presentation on using AJAX and mod_perl handlers.

## February 13, Tuesday, Tech Meeting


**Ronald Kimball** presented [Linux Genuine Advantage](http://www.linuxgenuineadvantage.org/).

**Uri Guttman** gave an overview of his new CMS::Simple module.

We finished with a discussion about the state of Perl 6.

## January 16, Tuesday, Tech Meeting


**Jerrad Pierce** gave a review of his [2006 Perl Advent Calendar.](https://perladvent.org/2006/)

**John Norton** presented his ***Logo*** interpreter in Perl.

# 2006

## December 12, Tuesday, Tech Meeting


**Uri Guttman** presented his mail filtering system, which uses Mail::Procmail, white-listing, and some simple spam filtering.

Our YAPC volunteer committee presented their plans for the [New England Perl Workshop NEPW], to be held March 10, 2007 at Northeastern University.

*Narrator: It didn't happen.*

## November 16, Tuesday, Tech Meeting


**Uri Guttman** gave a presentation on writing plug-ins in Perl.

**Jerrad Pierce** recruited volunteers for this year's [Perl advent calendar http://perladvent.pm.org/].

**Kenneth Graves** followed up on his presentation from last month, with a script that solves a puzzle of putting unique 3-digit perfect squares (100, 121, etc.) into a crossword-style grid.

## October 10, Tuesday, Tech Meeting


**Kenneth Graves** walked us through his three versions of a Kokuro solver.
starting with a simple but inefficient brute force approach and ending with
one with optimizations and heuristics to make it nice and speedy.

**Bill Ricker** showed us his script for solving doublets, aka word ladders.

## September 25, Monday, Special Tech Meeting


**Damian Conway** gave his opentalk 2.0 and [The DaVinci Codebase talks](https://www.flickr.com/photos/zippy/albums/72157594214387562), (both reprises of his OSCON 2006 and OSCON Europe 2005 keynotes).

**opentalk 2.0**

> In the green pastures of technology trends, Damian Conway leaves no
sacred cow un-tipped. This entertaining keynote address, from the 2005
O'Reilly European Open Source Convention, pokes fun at many hot topics
for software developers including: software patents, open source, mash
ups, online communities, rapid application development, operating system
zealotry, and even Joss Whedon's movies and TV shows.

**The DaVinci Codebase**

> When a dying operating system scrawls his name across its corrupted boot
volume, Dr. Damian Conway, an unassuming college professor, is plunged into
a deadly race against time to solve a series of impossible riddles. What is
the mysterious "Priory of Bios?" And who are their deadly nemeses "Opus
Arai?" On the run from the law and stalked by a ghostly pale killer, will
he unravel the subtle clues hidden in Leonardo's most famous source code
and reveal to the world the incredible secret encrypted in...the Da Vinci
Codebase?


Uri Guttman organized a foil hat contest, so the audience could protect themselves from Damian's mind-warping influence.

<Damian2006Mementos.html> has more details about this exciting meeting, including a fun video of the judging of the foil hat contest and pictures of the winners.

## September 12, Tuesday, Tech Meeting


**Jeff Barr** from Amazon.com talked to us about Amazon Web Services.

[Notes Links from the meeting](JeffBarrMeetingLinks.html)

*h/t to Tom Metro for taking notes*

## August 8, Tuesday, Tech Meeting


**Ronald J Kimball** presented his **Pachinko JAPHs**, comparing the verbose code to the golfed code.

**Uri Guttman** talked about some things he's working on, including packaging Tiny Template and several projects involving event loops .

We'll also talk about our bid proposal for YAPC 2007.

*Narrator: we did not do a YAPC.*


## July 11, Tuesday, Tech Meeting


**Audrey Tang** presented her YAPC Chicago talk, [Deploying Perl 6](http://www.yapcchicago.org/the-schedule/tuesday/t-abstracts#at1525)

## June 13, Tuesday, Tech Meeting


**David Golden** present **Eversion 101: An Introduction to Inside-Out Objects.**

  Inside-out objects offer intriguing advantages over traditional Perl
  objects, but at the cost of substantial complexity. This talk reviews
  pros and cons of inside-out objects and teaches the basics of how they
  work. It includes three core concepts, four ways to make them and five
  pitfalls to avoid.  This presentation is adapted from the "What's All
  the Fuss?" tutorial given at Perl Seminar NY in January 2006 and is
  being previewed for YAPC::NA 2006.

## May 9, Tuesday, Tech Meeting


**Ronald J Kimball** dissected **Ilmari Karonen**'s script that solves **Sudoku puzzles** using a **regular expression.**

## April 28, Friday, Social Meeting

***brian d foy*** was here!

## April 11, Tuesday, Tech Meeting


**Bill Ricker** showed us how he does GD-on-Map overlays and aligns points/lines on top of GD Charts.

**Drew Taylor** discussed a web-based timeline project that uses Catalyst, Class:DBI, JSON, and JavaScript.

Refreshments for this meeting were sponsored by Boston.pm member Greg London.

## March 14, Tuesday, Tech and Social Meeting


**Duane Bronson** presented some small scripts he has written.

Then we adjourned to [Cambridge Brewing Company](http://www.cambridgebrewingcompany.com/) around 8pm

## February 15, Wednesday, Tech Meeting


**Graphing with Perl**

We had presentations on different ways of creating graphs with Perl, including GD::Graph and gnuplot.  

We also learned about Spreadsheet::ParseExcel, PDL, and Edward Tufte's work on information design concepts.

## January 10, Tuesday, Tech Meeting


**Personal Tools Potluck**
Bring a tool you've written that you'd like to share!

**Ronald**: Simple photo gallery script; Uri: tiny but powerful template library; Alex: handy webform processing script 

# 2005


## December 13, Tuesday, Tech Meeting


**Ian Langworth** presented **Class::Agreement**, a behavioral contract system for Perl.

**Jerrad Pierce** presented the [http://web.mit.edu/belg4mit/www/ Perl Advent Calendar 2006].

## November 8, Tuesday, Tech Meeting


Fun with text animation!

**John Norton**'s Spiro JAPH and **Uri**'s maze solver.

## October 26, *Wednesday*, Special Tech Meeting


**Damian Conway** gave his ***Small Miracles*** talk!


## October 20, Thursday, Social Meeting

[RedBones](http://www.redbones.com/welcome.html) in Davis Sq, Somerville, 8pm

**brian d foy** was the guest of honor.


## October 11, Tuesday, Tech Meeting


**Ronald J Kimball**'s Ricochet Robot solver.

YAPCBostonExploration update. 

## September 13, Tuesday, Tech Meeting


YAPCBostonExploration brainstorming session.

## August 9, 2005 Tuesday, Tech Meeting -- First regular meeting at MIT

**Phil Mitchell** led a discussion of a project that he is working on:
a new kind of social software called Reef -- an ecosystem for content.
Reef integrates key ideas from wiki, structured blogging, BBS, social nets,
and RSS, and is built on top of Catalyst, an MVC web application framework.
Reef will serve as the foundation for 2people.org, a community site devoted to
sustainability .

## May 4, Wednesday, Social Meeting Natick, 

**Randal Schwartz** was the guest of honor.

# The Boston University Era 2004-04-27 - 2005-04-12

Thanks to Sean Quinlan, we had use of a BU classroom for about a year.

Our schedule there was the second Tuesday of every month, *except* when 
this would conflict with a Red Sox home game.


(*The BU Era continues up into/down from Ancient History; the file break is because because Mid History is history from the Wiki Era, and Ancient only from Mail Archives.*)

## April 12, - Federico Lucifredi - PerlQT 


**Federico Lucifredi** gave a talk on the new **PerlQT** bindings.

***END OF AN ERA - Last meeting in BU Kenmore Classroom Building*** 

## February 10, Thursday, Social Meeting

The ***Cheesecake Factory*** Cambridgeside Galleria  ***brian d foy*** was the guest of honor.

## February 8, Tuesday, Tech Meeting - BU Kenmore Classroom Building  - room 103

***brian d foy***  talked about ***Automating Releases***.

![Brian's release problem](./images/P2080193.JPG)

`brian` also answered questions about ***The Perl Review***  
and had people pose for photos in **Schwern's famous shirt**.


![bdf in Schewern's iconic shirt in front of Kenmore Square's iconic sign in same color scheme](./images/P2080209.JPG){ width=50%}

![Jimmy Fundy Jimmy wearing Schewern's shirt, Fenway Park](./images/P2080212.v01.jpg){ width=50%}

![Jimmy Fundy Jimmy wearing Schewern's shirt, Fenway Park](./images/P2080213.JPG){ width=40%}

![Uri G's preferred pose](./images/Uri_shirt_P2080200.JPG){ width=50%}


## January 19, Wednesday, Social Meeting

### Fire & Ice, Harvard Square

15 people enjoyed dinner at [Fire & Ice](http://www.fire-ice.com) with Ben Tilly, known as tilly on [PerlMonks](http://www.perlmonks.com).

# 2004

## December 14, Tuesday, Tech Meeting

### BU Kenmore Classroom Building room 106, 7:30pm

Only a few people showed up, so we went straight to Boston Beer Works for drinks and food.


## November 9, Tuesday, Tech Meeting  

### BU Physics Research Building room 148

*Cool Uses for Perl:  "Bring a fun script to show."*

**Bill Ricker** started us off by presenting some scripts he's written for analyzing and creating cryptograms, interspersed with interesting tidbits from the history of cryptography.

**Ronald J Kimball** followed with some scripts he's written for solving cryptograms.  We also
discussed some of the shortcomings to his brute force approach, particularly the problem of proper nouns.

**Tim Kohl** then reviewed a short script that finds words whose digital sums add up
to 666.  (e.g. cat = 3+1+20 = 24)  Except it really looks for 111, because
it multiplies the digital sum by 6, because that's what the TV evangelist
who inspired this script did.  We had fun looking through the words that
the script found.


After that people threw out a few questions for discussion.  One was a
tab-delimited file transposition issue that was then discussed on the
list.  Another was about recursively copying directories in Perl; the
File::NCopy module was suggested.

The pizza and soda were generously sponsored by monger **Greg London**.  
Greg has two books available through his website, <http://www.Greg London.com/>: _Impatient Perl_ and _Hunger Pangs_, a science fiction novel. Greg London also has inevitable options.


(PRB 148 is not our usual room, but is less than two blocks away.)


## October 2, 2004  (*NOT FREE 8 Hours*)

*Perl 6 and Parrot with **Dan Sugalski**.*

Lunch included. at MIT.
Part of Fall, 2004 **GBC/ACM Professional Development Seminars**
<http://www.gbcacm.org> for registration and information 


## September 28, 2004

Dinner with ***Randal L Schwartz*** <http://www.stonehenge.com/merlyn/> at Legal's, Framingham

## September 22, 2004

Extra-ordinary working meeting at **Akamai, Cambridge** -- a workshop to implement a [**kWiki**](https://metacpan.org/pod/Kwiki) to be **Boston.pm.org**. 

Followed by Beer and Dinner at CBC with Randal L Schwartz <http://www.stonehenge.com/merlyn/> who somehow managed to escape from his conference.

(*Narrator: kWiki served us well for several years, but the frictionless registration meant it collected SEO spam, which eventually got tiring. I even discovered one cluster in this 2d history conversion!*)

## before

This history file begins with history recorded on the kWiki and later ported wikis.



For history prior to Sept 2004, the [Reconstructed Ancient History 1999-2004](History-01-Reconstructed-1999.html) is built from mailing list archives.


For before the mailing lists archive started, all we have currently is the highlights summary timeline in [History](History-00.html).


