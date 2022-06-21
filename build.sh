#!/bin/bash
port=2020
docker build . -t v4zha/wargame:latest
docker run -p $port:22 --rm -d --name clbattle --hostname clbattle v4zha/wargame:latest