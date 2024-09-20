#!/bin/bash

echo "========================================"
echo "| Copy services to /etc/systemd/system |"
echo "| edit .env file                       |"
echo "========================================"

echo "Enable services?"
pause

echo "Enabling services..."

sudo systemctl enable diun-docker-compose.service         
sudo systemctl enable gotify-docker-compose.service     
sudo systemctl enable qbittorrent-docker-compose.service
sudo systemctl enable dockerproxy-docker-compose.service  
sudo systemctl enable homepage-docker-compose.service   
sudo systemctl enable transmission-docker-compose.service
sudo systemctl enable emby-docker-compose.service         
sudo systemctl enable jellyfin-docker-compose.service   
sudo systemctl enable uptime-kuma-docker-compose.service
sudo systemctl enable pihole-docker-compose.service
sudo systemctl enable filebrowser-docker-compose.service  
sudo systemctl enable portainer-docker-compose.service
sudo systemctl enable samba-docker-compose.service
sudo systemctl enable httpfs-docker-compose.service

echo "Start service?"
pause

echo "Starting services..."

sudo systemctl start diun-docker-compose.service         
sudo systemctl start gotify-docker-compose.service     
sudo systemctl start qbittorrent-docker-compose.service
sudo systemctl start dockerproxy-docker-compose.service  
sudo systemctl start homepage-docker-compose.service   
sudo systemctl start transmission-docker-compose.service
sudo systemctl start emby-docker-compose.service         
sudo systemctl start jellyfin-docker-compose.service   
sudo systemctl start uptime-kuma-docker-compose.service
sudo systemctl start pihole-docker-compose.service
sudo systemctl start filebrowser-docker-compose.service  
sudo systemctl start portainer-docker-compose.service
sudo systemctl start samba-docker-compose.service
sudo systemctl start httpfs-docker-compose.service