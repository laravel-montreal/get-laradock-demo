#!/bin/sh

git clone https://github.com/ctrlwebinc/santa-locator.git
cd santa-locator
git clone https://github.com/Laradock/laradock.git
cp ../laradock-env-example-production laradock/.env
rm laradock/docker-compose.yml
cp ../production-single-droplet-compose.yml laradock/docker-compose
cd laradock
docker-compose up -d nginx mysql workspace
