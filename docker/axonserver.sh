#!/usr/bin/env bash

# docker volume create axon_data
# docker volume create axon_events
# docker volume create axon_config

# docker run -d --rm --name axonserver \
#     -p 8024:8024 \
#     -p 8124:8124 \
#     -v axon_data:/data \
#     -v axon_events:/eventdata \
#     -v axon_config:/config \
# axoniq/axonserver

# quick runs, delete event store on restarts for dev stuff
docker run -d --name axonserver  -p 8024:8024 -p 8124:8124 axoniq/axonserver