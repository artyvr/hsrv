#!/usr/bin/env bash

systemctl stop portainer-docker-compose.service

docker stop portainer
docker rm portainer
docker pull portainer/portainer-ce:latest

systemctl start portainer-docker-compose.service