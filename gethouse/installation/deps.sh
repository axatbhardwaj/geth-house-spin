#!/bin/bash

set -e 

# Installing dependencies for Rust installation
echo "INFO: Installing Curl for Rustup installation"
sudo apt install curl -y

chmod 775 rustInstall.sh

# Running rustInstall.sh as the ubuntu user
sudo -u ubuntu "./rustInstall.sh"

# Sourcing the cargo environment as the ubuntu user
sudo -u ubuntu bash -c 'source "$HOME/.cargo/env"'

# Installing dependencies for lighthouse build
sudo apt update && sudo apt upgrade -y
sudo apt install make -y
sudo apt install build-essential -y
sudo apt-get install protobuf-compiler -y
sudo apt install cmake -y
sudo apt-get install libclang-dev --fix-missing -y
sudo apt-get install screen -y 
sudo apt install parallel -y

reset