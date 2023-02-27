#!/bin/bash

sudo systemctl stop nginx

REPOSITORY_URL="https://github.com/Isaac2500/Practica-Virtualizacion-DevOps.git"
LOCAL_DIR="/var/www/html/Practica-Virtualizacion-DevOps"

if [ ! -d "$LOCAL_DIR" ]
then
  sudo git clone "$REPOSITORY_URL"
else
  sudo git pull origin main
fi

sudo systemctl start nginx
ngrok http 80