#!/bin/sh 
if [ "$1" == "sp1" ]; then
    set -x
    nc -U /run/sp2/sp2.sock
    exit 0
fi
if [ "$1" == "sp2" ]; then
    set -x
    nc -l -k -U /run/sp2/sp2.sock | nc -U /run/sp3/sp3.sock
    exit 0
fi
if [ "$1" == "sp3" ]; then
    set -x
    nc -l -k -U /run/sp3/sp3.sock
    exit 0
fi
