#!/usr/bin/perl -w
#
# USAGE
#
# perl mp3info.pl $PODS/'Podcast Name In Quotes'
#
# MUSIC_PATH=$HOME/Music
# MUSIC_PATH=/media/$USER/bulkstorage/$USER/Music
# MUSIC_PATH=$HOME/Music/Podcasts
# find $MUSIC_PATH  -type d -print0 | xargs -0 perl ./mp3info.pl
#
# the -print0 and -0 are necessary since Album dirs have spaces :-/
#
# NB: for R/O bulk archive drive mentioned, need to 
#    sudo mount -o remount,rw $mount_point  # before
#    sudo mount -o remount,ro $mount_point  # after 
               
use MP3::Tag;
# Mutated from MP#::Tag demo program into tool to generate an
# HTML Directory listings of MP3 etc 
# in new form, instead of a list of files on STDIN, 
# it will take a list of directories on ARGV,
# and write a directory.hml into the directory

# BUGS
# has same tags for HTML as MP3; can't answer "is it really audio",
# so will likely catalog nohup.out or something !!

# original example comments
# define how autoinfo tries to get information
# default:
# MP3::Tag->config("autoinfo","ID3v2","ID3v1","filename");
# don't use ID3v2:
# MP3::Tag->config("autoinfo","ID3v1","filename");

use v5.030;

use URI::Encode qw(uri_encode uri_decode);
use POSIX qw/strftime/;
use Path::Tiny;
use File::stat;
use Readonly;
use Syntax::Keyword::Try qw( try :experimental );

Readonly my $page_filename => 'directory.html';

# @TODO probably need some UTF declarations
# @TODO add link to a vanilla CSS file ? 
# @TODO do we read css for bulk Music from $HOME/Music ?
# @TODO should sort files by either name or f/s date or better Tags date (and maybe dirs first?)

DIRECTORY:
for my $dir_arg (@ARGV){

    warn ">> entering $dir_arg";

    my $dir = path($dir_arg);

    die "$dir_arg not a directory" unless $dir->is_dir ;

    my @Files = $dir->children;
    # warn '>>>>', join(q(,), map{"'$_'"} @Files); # DEBUG

    ## open directory.html FH here
    my $fh;
    my $dodge=q();

    OPEN:
    while ( ! $fh ){
        try {
             $dir->chmod('ug+w') if $dodge eq 'dir_perm';  # Very Temporary

             $fh = $dir->child($page_filename)->filehandle('>', ':raw:utf8_strict');

             $dir->chmod('ug-w') if $dodge eq 'dir_perm'; # I said Very Temporary!
         }
         catch ($e =~ m{Error open.*Permission denied}i ) {
             warn "caught '$e'; workaround ...";
             if ($dodge){
                 warn "already dodged $dodge workaround, skipping '$dir'";
                 next DIRECTORY;
             }
             $dodge = 'dir_perm'; 
             redo OPEN;
             }
         catch ($e) {
             warn "Unexpected exception caught '$e', exiting $dir";
             next DIRECTORY;
         }
     }



    say $fh <<~"EOF";
    <html>
    <head>
    <title>Directory of $dir Audio Files</title>
    </head>
    <body>
    EOF

    FILE:
    for my $file (grep { $_->stringify !~ m/[.]htm[l]?$/ } @Files){
            if ($file->is_dir){
                warn $file->stringify, " is directory, not recursing, do it separately after";
                say $fh sprintf '<br /><div class=subdir><a href="./%s/%s">%s/</a></div><br />', uri_encode($file->basename), uri_encode($page_filename), $file;
                next;
            }
            if (my $mp3=MP3::Tag->new($file->stringify)) {
                say $fh sprintf '<div class=program> <!-- %s -->', uri_encode $file->stringify;
                # my @tags = $mp3->get_tags(); 
                # say $fh sprintf '<!-- %s -->', join q(,), map{uri_encode $_} @tags;
                my $stat= $file->stat;
                # debug:
                # print "$file (Tags: ", join(", ",$mp3->get_tags),")\n";
                my %Info;
                my @keys = qw/Song Track Artist Album Comment/ ;
                (@Info{@keys})=$mp3->autoinfo;
                for my $k (@keys){
                    # say $fh "<!-- ", $k, q(:), $Info{$k}, "-->";  # Debug
                    say $fh "<br /><span class=attr>$k:\t $Info{$k}</span>" if $Info{$k};
                }
                say $fh sprintf "<br /><span class=attr>size: %dM</span>\n<br /><span class=attr>date: %s</span>", int($stat->size/(1<<20)), POSIX::strftime "%F", localtime($stat->mtime)  ;
                say $fh sprintf '<br /><a href="%s">PLAY</a>', uri_encode $file->relative($file->parent);
                say $fh "</div>\n";
            } # end if mp3
        } # end for files 
        say $fh <<~'EOF';
        </body>
        </html>
        EOF

        # close directory.html FH here

} # end dirs


__END__

Diagnostics


>> entering /media/wdr/bulkstorage/wdr/Music/Science Unscripted - Daily news on COVID-19 at ./mp3info.pl line 54.
Ridiculously large tag size: 1945578; file size 920474 at .../lib/perl5/MP3/Tag/ID3v2.pm line 2081.

