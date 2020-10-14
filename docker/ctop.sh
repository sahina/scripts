#!/usr/bin/env bash

# https://github.com/bcicen/ctop/blob/master/README.md

docker run --rm -ti \
  --name=ctop \
  --volume /var/run/docker.sock:/var/run/docker.sock:ro \
  quay.io/vektorlab/ctop:latest