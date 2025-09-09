#! /bin/bash
# usage - module name to check

for binperl in /usr/bin/perl
do
    $binperl -M$1 -e "print(qq(** $binperl $^V has $1 v. ), $1->VERSION,qq(\n)); " \
        -e "  \$p=$1; \$p=~s,::,/,g; \$p=~s,\$,.pm,; print q(** ).\$INC{\$p}.qq(\n); "

done 2> /dev/null; 


 for pp in $(perlbrew list|perl -nlE 'print $1 if /(perl\S+)/')
 do
   # perl -M$1 -lE 'print "Version " . $ARGV[0]->VERSION . " of " . $ARGV[0] . \    " is installed.\n"' $1  
   perlbrew exec --with $pp "perl -M$1 -lE 'print(q(** $pp has $1 v. ),$1->VERSION); \
	\$p=$1; \$p=~s,::,/,g; \$p=~s,\$,.pm,; print q(** ).\$INC{\$p};' "     # 2> /dev/null
    #'which ack && ack --version | head -2 | fmt';
 done   2> /dev/null | fgrep '**' # 1> /dev/null
