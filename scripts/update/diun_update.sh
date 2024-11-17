#!/usr/bin/env bash

systemctl stop diun-docker-compose.service

docker stop diun
docker rm diun
docker pull crazymax/diun:latest

systemctl start diun-docker-compose.service