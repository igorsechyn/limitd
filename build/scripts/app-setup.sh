#!/bin/bash

set -e

. ~/.nvm/nvm.sh
cd /home/ubuntu/app && tar xf app.tar.gz
nvm install 8
sudo ln -s $(which node) /usr/bin/node
npm install