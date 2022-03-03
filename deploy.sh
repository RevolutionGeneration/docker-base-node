#!/bin/sh
docker build --tag revgen/docker-base-node . --pull --no-cache && docker push revgen/docker-base-node 
