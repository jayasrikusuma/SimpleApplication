#!/usr/bin/env bash 
sudo apt update && sudo apt install nodejs npm
sudo npm install -g pm2
pm2 stop SimpleApp
cd SimpleApplication/
npm install
pm2 start ./bin/www --name SimpleApp --env=production
