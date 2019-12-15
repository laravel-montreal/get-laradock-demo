#!/bin/sh

git clone https://github.com/Laradock/laradock.git
git clone https://github.com/ctrlwebinc/santa-locator.git ../santa-locator
cp env-configured laradock/.env
cd laradock
docker-compose up -d nginx mysql workspace
