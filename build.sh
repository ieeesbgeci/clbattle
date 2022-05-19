#!/bin/bash
port=2020
docker build . -t wargame:latest
docker run -p $port:22 --rm -d --name clbattle --hostname clbattle wargame:latest