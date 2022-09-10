#!/bin/bash 
yum update -y 
sudo yum install -y git 
sudo yum install -y httpd
sudo systemctl start httpd 
sudo systemctl enable httpd
git clone https://github.com/Akiranred/candy-crush.git /var/www/html
