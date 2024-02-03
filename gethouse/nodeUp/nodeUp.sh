#!/bin/bash

chmod 775 gethUp.sh lighthouseUp.sh secretGen.sh

source ./secretGen.sh

export PATH="$HOME/.cargo/bin:$PATH"

#geth Args (1st argumnet)
#TYPE 1 full node without RPC
#TYPE 2 full node with RPC
#TYPE 3 archive node without rpc
#TYPE 4 archive node with RPC
#TYPE 5 snap node without RPC
#TYPE 6 snap node with RPC
gethArg=$1

#lighthouse Args (2nd argument)
#TYPE 1  without staking
#TYPE 2  with staking
lighthouseArg=$2

# Create a new screen session for gethUp.sh
screen -dmS gethSession bash -c "./gethUp.sh $gethArg"

# Create a new screen session for lighthouseUp.sh
screen -dmS lighthouseSession bash -c "./lighthouseUp.sh $lighthouseArg"
