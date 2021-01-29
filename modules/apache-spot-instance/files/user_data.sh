#!/bin/bash -xe

yum update
yum install -y httpd
echo 'Hello world!' > /var/www/html/index.html
sudo systemctl start httpd