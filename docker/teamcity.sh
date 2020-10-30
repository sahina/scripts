#!/usr/bin/env bash

docker volume create teamcity_data
docker volume create teamcity_logs

docker run -it --name teamcity  \
    -v teamcity_data:/data/teamcity_server/datadir \
    -v teamcity_logs:/opt/teamcity/logs  \
    -p 8111:8111 \
jetbrains/teamcity-server
