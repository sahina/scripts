#!/usr/bin/env bash

docker volume create shinobi_data

docker run -d \
	--name shinobi \
	-p 9002:8080/tcp \
	-v shinobi_data:/dev/shm/streams:rw \
	-v shinobi_data:/config:rw \
	-v shinobi_data:/home/Shinobi/libs/customAutoLoad:rw \
	-v shinobi_data:/var/lib/mysql:rw \
	-v shinobi_data:/home/Shinobi/videos:rw \
	-v shinobi_data:/home/Shinobi/plugins:rw \
	-v /etc/localtime:/etc/localtime:ro \
migoller/shinobidocker