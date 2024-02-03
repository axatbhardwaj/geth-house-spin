#!/bin/bash

#screen -S "Geth"

# Get the type
type=$1

#TYPE 1 full node without RPC
#TYPE 2 full node with RPC
#TYPE 3 archive node without rpc
#TYPE 4 archive node with RPC
#TYPE 5 snap node without RPC
#TYPE 6 snap node with RPC

# Switch on type of geth node
case $type in
  1) 
  sudo geth --mainnet --datadir "/data/ethereum" --http --authrpc.addr localhost --authrpc.vhosts="localhost"  --authrpc.port 8551 --authrpc.jwtsecret=/secrets/jwt.hex --syncmode full;
  ;;
  2) 
  sudo geth --mainnet --datadir "/data/ethereum" --http --http.api eth,net,web3 --http.addr "0.0.0.0" --http.port 8545 --http.corsdomain '*' --authrpc.addr localhost --authrpc.vhosts="localhost" --authrpc.port 8551 --authrpc.jwtsecret=/secrets/jwt.hex --syncmode full
  ;;
  3) 
  sudo geth --mainnet --datadir "/data/ethereum" --http --authrpc.addr localhost --authrpc.vhosts="localhost"  --authrpc.port 8551 --authrpc.jwtsecret=/secrets/jwt.hex --syncmode full --gcmode archive;
  ;;
  4) 
  sudo geth --mainnet --datadir "/data/ethereum" --http --http.api eth,net,web3 --http.addr "0.0.0.0" --http.port 8545 --http.corsdomain '*' --authrpc.addr localhost --authrpc.vhosts="localhost" --authrpc.port 8551 --authrpc.jwtsecret=/secrets/jwt.hex --syncmode full --gcmode archive
  ;;
  5) 
  sudo geth --mainnet --datadir "/data/ethereum" --http --authrpc.addr localhost --authrpc.vhosts="localhost"  --authrpc.port 8551 --authrpc.jwtsecret=/secrets/jwt.hex --syncmode snap
  ;;
  6) 
  sudo geth --mainnet --datadir "/data/ethereum" --http --http.api eth,net,web3 --http.addr "0.0.0.0" --http.port 8545 --http.corsdomain '*' --authrpc.addr localhost --authrpc.vhosts="localhost" --authrpc.port 8551 --authrpc.jwtsecret=/secrets/jwt.hex --syncmode snap 
  ;;
  *) 
  echo "Invalid Argument enter a type in flag"
esac
