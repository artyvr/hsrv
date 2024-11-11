#!/usr/bin/env bash

systemctl stop homepage-docker-compose.service

docker stop homepage
docker rm homepage
docker pull ghcr.io/gethomepage/homepage:latest

systemctl start homepage-docker-compose.service