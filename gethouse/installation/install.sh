#!/bin/bash

# Check the value of the EUID environment variable
if [ "$EUID" -eq 0 ]; then
  echo "The script is running as root."
else 
    echo "Run as root."
    exit 1
fi

set -e 

# Making all the scripts executable
chmod 775 deps.sh geth.sh lighthouse.sh

sudo apt update && sudo apt upgrade -y

echo "INFO: Installing Dependencies"
sudo -u ubuntu "./deps.sh"

sudo apt update && sudo apt upgrade -y

# Starting geth installation
echo "INFO: Installing geth"
source "./geth.sh"

sudo apt update && sudo apt upgrade -y

# Starting Lighthouse build
echo "INFO: Installing Lighthouse"
sudo -u ubuntu bash -c "./lighthouse.sh"

sudo apt update && sudo apt upgrade -y

#ownership for lighthouse
sudo mkdir /data
sudo chown -R ubuntu /data

echo "INFO: All installations are complete"