#!/usr/bin/env bash

docker volume create yacht

docker run --name yacht \
    -d -p 9001:8000 \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -v yacht:/config \
selfhostedpro/yacht
