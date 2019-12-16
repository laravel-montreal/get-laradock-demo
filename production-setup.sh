#!/bin/sh

git clone https://github.com/ctrlwebinc/santa-locator.git
cd santa-locator
chmod -R a+w storage
cp ../laravel-production-env .env
git clone https://github.com/Laradock/laradock.git
cp ../laradock-env-example-production laradock/.env
rm laradock/docker-compose.yml
cp ../production-single-droplet-compose.yml laradock/docker-compose.yml
cd laradock
docker-compose up -d nginx mysql workspace
