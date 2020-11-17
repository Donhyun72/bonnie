#!/bin/bash

apt-get update -y >/dev/null
apt-get install docker.io -y >/dev/null

docker build -t bonnie:1.0 .
docker container run -it --rm bonnie:1.0
