#!/bin/bash
#build single level 

if [ -z "$1" ]
  then
    echo "Level not specified"
    exit 1
fi

i=$1
echo "Building Level $i"
port=$((2020+i))
cp ./story.py ./lvl_$i/scripts/story.py
docker build ./lvl_$i -t wargame:lvl$i
rm ./lvl_$i/scripts/story.py
docker run -p $port:22 --rm -d --name clbattlelv$i --hostname clbattle wargame:lvl$i