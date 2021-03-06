#!/usr/bin/env bash

# create volume
docker volume create --driver local --name=drawio

# bring up the container
docker run --name=drawio \
    -p 8080:8080 \
    -p 8443:8443 \
    --detach \
    --restart=always \
fjudith/draw.io:latest
