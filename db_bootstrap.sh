#!/usr/bin/env bash

sudo yum clean all
sudo yum -y update
sudo yum -y install httpd

#if ! [ -L /var/www ]; then
#  rm -rf /var/www
#  ln -fs /vagrant /var/www
#fi

sudo echo "This is the db server" >> /var/www/html/index.html
sudo systemctl start httpd
sudo systemctl enable httpd