#! /bin/bash

cd /home/log430/log430-a25-labo0

git fetch
git pull

docker stop ${docker ps - q --filter ancestor=labo0-calculator:latest}
docker build -t labo0-calculator .
docker run -it labo0-calculator