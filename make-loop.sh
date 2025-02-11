#!/bin/bash
set -x -v
while true; do
    echo $PWD

    # if-and-when Makefile is recursive to e.g. Scripts/Makefile 
    # can switch to recursive
    #  -e modify,create,delete -r /path/to/your/dir 
    inotifywait -e modify *.md  
    echo "========"
    date 
    time make -r all
    echo "========"

done
