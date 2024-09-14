#!/bin/bash

# Get the type from the user
type=$1

#cd ~/NodeOnDemand/gethouse/installation/lighthouse

#changing to root as cargo and lighthouse config point to root user by default build

#TYPE 1  without staking (Mainnet)
#TYPE 2  without staking (Mainnet) with RPC
#TYPE 3  with staking (Mainnet)
#TYPE 4  with staking (Mainnet) with RPC
#TYPE 5  without staking (Sepolia)
#TYPE 6  without staking (Sepolia) with RPC
#TYPE 7  with staking (Sepolia)
#TYPE 8  with staking (Sepolia) with RPC
#TYPE 9  without staking (Holesky)
#TYPE 10 without staking (Holesky) with RPC
#TYPE 11 with staking (Holesky)
#TYPE 12 with staking (Holesky) with RPC

# Switch on type of geth node
case $type in
    1) lighthouse beacon_node --network mainnet --datadir /data/ethereum --execution-endpoint http://localhost:8551 --execution-jwt /secrets/jwt.hex --checkpoint-sync-url https://mainnet.checkpoint.sigp.io --disable-deposit-contract-sync;;
    2) lighthouse beacon_node --network mainnet --datadir /data/ethereum --http --http-address 0.0.0.0 --http-port 5052 --execution-endpoint http://localhost:8551 --execution-jwt /secrets/jwt.hex --checkpoint-sync-url https://mainnet.checkpoint.sigp.io --disable-deposit-contract-sync;;
    3) lighthouse beacon_node --network mainnet --datadir /data/ethereum --execution-endpoint http://localhost:8551 --execution-jwt /secrets/jwt.hex --checkpoint-sync-url https://mainnet.checkpoint.sigp.io;;
    4) lighthouse beacon_node --network mainnet --datadir /data/ethereum --http --http-address 0.0.0.0 --http-port 5052 --execution-endpoint http://localhost:8551 --execution-jwt /secrets/jwt.hex --checkpoint-sync-url https://mainnet.checkpoint.sigp.io;;
    5) lighthouse beacon_node --network sepolia --datadir /data/ethereum --execution-endpoint http://localhost:8551 --execution-jwt /secrets/jwt.hex --checkpoint-sync-url https://sepolia.beaconstate.info/ --disable-deposit-contract-sync;;
    6) lighthouse beacon_node --network sepolia --datadir /data/ethereum --http --http-address 0.0.0.0 --http-port 5052 --execution-endpoint http://localhost:8551 --execution-jwt /secrets/jwt.hex --checkpoint-sync-url https://sepolia.beaconstate.info/ --disable-deposit-contract-sync;;
    7) lighthouse beacon_node --network sepolia --datadir /data/ethereum --execution-endpoint http://localhost:8551 --execution-jwt /secrets/jwt.hex --checkpoint-sync-url https://sepolia.beaconstate.info/;;
    8) lighthouse beacon_node --network sepolia --datadir /data/ethereum --http --http-address 0.0.0.0 --http-port 5052 --execution-endpoint http://localhost:8551 --execution-jwt /secrets/jwt.hex --checkpoint-sync-url https://sepolia.beaconstate.info/;;
    9) lighthouse beacon_node --network holesky --datadir /data/ethereum --execution-endpoint http://localhost:8551 --execution-jwt /secrets/jwt.hex --checkpoint-sync-url https://holesky.beaconstate.info/ --disable-deposit-contract-sync;;
    10) lighthouse beacon_node --network holesky --datadir /data/ethereum --http --http-address 0.0.0.0 --http-port 5052 --execution-endpoint http://localhost:8551 --execution-jwt /secrets/jwt.hex --checkpoint-sync-url https://holesky.beaconstate.info/ --disable-deposit-contract-sync;;
    11) lighthouse beacon_node --network holesky --datadir /data/ethereum --execution-endpoint http://localhost:8551 --execution-jwt /secrets/jwt.hex --checkpoint-sync-url https://holesky.beaconstate.info/;;
    12) lighthouse beacon_node --network holesky --datadir /data/ethereum --http --http-address 0.0.0.0 --http-port 5052 --execution-endpoint http://localhost:8551 --execution-jwt /secrets/jwt.hex --checkpoint-sync-url https://holesky.beaconstate.info/;;
    *) echo "Invalid Argument. Enter a valid type."
esac