#!/bin/bash
if [ -z "$1" ]
  then
    echo "Number of levels not specified"
    exit 1
fi

count=$1
for((c=0;c<=count;c++))
do 
    echo "Building Level $c"
    port=$((2020+c))
    docker build ./lvl_$c -t wargame:lvl$c
    docker run -p $port:22 --rm -d --name clbattlelv$c --hostname clbattle wargame:lvl$c
    clear
done 