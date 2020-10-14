#!/usr/bin/env bash

docker volume create portainer_data

<<<<<<< HEAD
docker run -d -p 8000:8000 \
	-p 9000:9000 \
	--name=portainer \
	--restart=always \
	-v /var/run/docker.sock:/var/run/docker.sock \
	-v portainer_data:/data \
portainer/portainer-ce
=======
docker run -d \
    -p 8000:8000 \
    -p 9000:9000 \
    --name=portainer \
    --restart=always \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -v portainer_data:/data \
<<<<<<< HEAD
portainer/portainer-ce
=======
portainer/portainer
>>>>>>> f07b2c98267dff2b02e3c4e1389547521b8ce49f
>>>>>>> 381fb1fc04be950bf4d1c136b80f7e4edb916bbb
