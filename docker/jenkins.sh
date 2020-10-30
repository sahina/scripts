#!/usr/bin/env bash

docker volume create jenkins_home

docker run -p 8880:8080 \
    -p 50000:50000 \
    -v jenkins_home:/var/jenkins_home \
    --name=jenkins \
    --restart=always \
    --detach \
jenkins/jenkins:lts
