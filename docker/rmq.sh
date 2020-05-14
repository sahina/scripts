#!/usr/bin/env bash

docker volume create rmq_data

docker run -d \
     -p 15672:15672 \
     -p 5672:5672 \
     --name=rmq \
     --restart=always \
     -v /var/run/docker.sock:/var/run/docker.sock \
     -v rmq_data:/var/lib/rabbitmq \
rabbitmq:3-management