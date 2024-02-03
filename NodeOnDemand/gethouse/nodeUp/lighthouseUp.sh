#!/bin/bash
#TODO :- add utlization of screen to this

#screen -S "lighthouse"

#!/bin/bash

# Get the number from the user
type=$1

#cd ~/NodeOnDemand/gethouse/installation/lighthouse

#changing to root as cargo and lighthouse config point to root user by deafult build


#TYPE 1  without staking
#TYPE 2  with staking


# Switch on type of geth node
case $type in
  1)lighthouse beacon_node --network mainnet --datadir /data/ethereum --http --execution-endpoint http://localhost:8551 --execution-jwt /secrets/jwt.hex --checkpoint-sync-url https://mainnet.checkpoint.sigp.io --disable-deposit-contract-sync;;
  2)lighthouse beacon_node --network mainnet --datadir /data/ethereum --http --execution-endpoint http://localhost:8551 --execution-jwt /secrets/jwt.hex --checkpoint-sync-url https://mainnet.checkpoint.sigp.io;;
  *) echo "Invalid Argument enter a type in flag"
esac
