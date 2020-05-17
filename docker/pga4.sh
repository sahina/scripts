#!/usr/bin/env bash

# create volume
docker volume create --driver local --name=pga4volume

docker run --publish 5050:80 \
  --volume=pga4volume:/var/lib/pgadmin \
  --env-file=pga4.env \
  --name=pgadmin4 \
  --hostname=pgadmin4 \
  --network=pgnetwork \
  --detach \
  --restart=always \
dpage/pgadmin4:latest