#!/bin/bash

chmod 775 gethUp.sh lighthouseUp.sh secretGen.sh

source ./secretGen.sh

export PATH="$HOME/.cargo/bin:$PATH"

#geth Args (1st argument)
#TYPE 1 full node without RPC (Mainnet)
#TYPE 2 full node with RPC (Mainnet)
#TYPE 3 archive node without RPC (Mainnet)
#TYPE 4 archive node with RPC (Mainnet)
#TYPE 5 snap node without RPC (Mainnet)
#TYPE 6 snap node with RPC (Mainnet)
#TYPE 7 full node without RPC (Sepolia)
#TYPE 8 full node with RPC (Sepolia)
#TYPE 9 archive node without RPC (Sepolia)
#TYPE 10 archive node with RPC (Sepolia)
#TYPE 11 snap node without RPC (Sepolia)
#TYPE 12 snap node with RPC (Sepolia)
gethArg=$1

#lighthouse Args (2nd argument)
#TYPE 1 without staking (Mainnet)
#TYPE 2 with staking (Mainnet)
#TYPE 3 without staking (Sepolia)
#TYPE 4 with staking (Sepolia)
lighthouseArg=$2

# Debug output
echo "Starting geth with argument: $gethArg"
echo "Starting lighthouse with argument: $lighthouseArg"

# Create a new screen session for gethUp.sh
screen -dmS gethSession bash -c "./gethUp.sh $gethArg"

# Check if geth session started
if screen -list | grep -q "gethSession"; then
    echo "gethSession started successfully."
else
    echo "Failed to start gethSession."
fi

# Create a new screen session for lighthouseUp.sh
screen -dmS lighthouseSession bash -c "./lighthouseUp.sh $lighthouseArg"

# Check if lighthouse session started
if screen -list | grep -q "lighthouseSession"; then
    echo "lighthouseSession started successfully."
else
    echo "Failed to start lighthouseSession."
fi