#!/usr/bin/env bash

# create volume
docker volume create --driver local --name=pgvolume

# create network
docker network create --driver bridge pgnetwork

# bring up the container
docker run --publish 5432:5432 \
  --volume=pgvolume:/pgdata \
  --env-file=pg.env \
  --name=postgres \
  --hostname=postgres \
  --network=pgnetwork \
  --restart=always \
  --detach \
  --rm \
postgres:12.2