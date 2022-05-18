#!/bin/bash
docker stop $(docker container ls -q)
docker system prune -a
docker rmi $(docker images -a -q)
