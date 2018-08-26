#!/bin/bash

set -e

sleep 10
apt-get update -y
apt-get install git make gcc python build-essential -y
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.2/install.sh | bash
mv /tmp/limitd.service /etc/systemd/system/
mkdir -p /home/ubuntu/app
mkdir -p /var/limitd/database
chown ubuntu:ubuntu -R /var/limitd/database
chown ubuntu:ubuntu -R /home/ubuntu
