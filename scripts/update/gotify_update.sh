#!/usr/bin/env bash

systemctl stop gotify-docker-compose.service

docker stop homepage
docker rm homepage
docker pull gotify/server:latest

systemctl start gotify-docker-compose.service