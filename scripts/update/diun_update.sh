#!/usr/bin/env bash

systemctl stop diun-docker-compose.service

docker stop homepage
docker rm homepage
docker pull crazymax/diun:latest

systemctl start diun-docker-compose.service