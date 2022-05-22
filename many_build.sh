#!/bin/bash
#build multiple images and containers

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
    cp ./story.py ./lvl$c/scripts/story.py
    docker build ./lvl$c -t wargame:lvl$c
    docker run -p $port:22 --rm -d --name clbattlelvl$c --hostname clbattle wargame:lvl$c
    clear
done 