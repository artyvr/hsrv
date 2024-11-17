#!/usr/bin/env bash

systemctl stop gotify-docker-compose.service

docker stop gotify
docker rm gotify
docker pull gotify/server:latest

systemctl start gotify-docker-compose.service