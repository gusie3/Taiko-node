#!/bin/bash
# Update and upgrade
sudo apt update && sudo apt upgrade -y

# Install docker and docker-compose
curl -fsSL https://get.docker.com | sh && ln -s /usr/libexec/docker/cli-plugins/docker-compose /usr/local/bin

# Install taiko
git clone https://github.com/taikoxyz/simple-taiko-node.git

#go the taiko directory
cd simple-taiko-node

#Copy sample .env file
cp .env.sample .env

#Configure ENV file
nano .env

#View endpoint
source .env
echo $L1_ENDPOINT_WS

#Run Taiko Node
docker compose up -d
