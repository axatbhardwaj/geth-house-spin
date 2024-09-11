#!/bin/bash

# Get the number from the user
type=$1

#cd ~/NodeOnDemand/gethouse/installation/lighthouse

#changing to root as cargo and lighthouse config point to root user by deafult build


#TYPE 1  without staking (Mainnet)
#TYPE 2  with staking (Mainnet)
#TYPE 3  without staking (Sepolia)
#TYPE 4  with staking (Sepolia)


# Switch on type of geth node
case $type in
    1)lighthouse beacon_node --network mainnet --datadir /data/ethereum --http --execution-endpoint http://localhost:8551 --execution-jwt /secrets/jwt.hex --checkpoint-sync-url https://mainnet.checkpoint.sigp.io --disable-deposit-contract-sync;;
    2)lighthouse beacon_node --network mainnet --datadir /data/ethereum --http --execution-endpoint http://localhost:8551 --execution-jwt /secrets/jwt.hex --checkpoint-sync-url https://mainnet.checkpoint.sigp.io;;
    3)lighthouse beacon_node --network sepolia --datadir /data/ethereum --http --execution-endpoint http://localhost:8551 --execution-jwt /secrets/jwt.hex --checkpoint-sync-url https://sepolia.checkpoint.sigp.io --disable-deposit-contract-sync;;
    4)lighthouse beacon_node --network sepolia --datadir /data/ethereum --http --execution-endpoint http://localhost:8551 --execution-jwt /secrets/jwt.hex --checkpoint-sync-url https://sepolia.checkpoint.sigp.io;;
    *) echo "Invalid Argument enter a type in flag"
esac