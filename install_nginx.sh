#!/bin/bash
sudo apt-get update -y
sudo apt-get install nginx -y
sudo systemctl start nginx
sudo systemctl enable nginx 
sudo systemctl status nginx 
curl 127.0.0.1
exit