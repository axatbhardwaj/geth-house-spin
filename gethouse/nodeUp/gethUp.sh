#!/bin/bash

#screen -S "Geth"

# Get the type
type=$1

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
#TYPE 13 full node without RPC (Holesky)
#TYPE 14 full node with RPC (Holesky)
#TYPE 15 archive node without RPC (Holesky)
#TYPE 16 archive node with RPC (Holesky)
#TYPE 17 snap node without RPC (Holesky)
#TYPE 18 snap node with RPC (Holesky)

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
        sudo geth --mainnet --datadir "/data/ethereum" --http --authrpc.addr localhost --authrpc.vhosts="localhost"  --authrpc.port 8551 --authrpc.jwtsecret=/secrets/jwt.hex --syncmode snap;
    ;;
    6)
        sudo geth --mainnet --datadir "/data/ethereum" --http --http.api eth,net,web3 --http.addr "0.0.0.0" --http.port 8545 --http.corsdomain '*' --authrpc.addr localhost --authrpc.vhosts="localhost" --authrpc.port 8551 --authrpc.jwtsecret=/secrets/jwt.hex --syncmode snap
    ;;
    7)
        sudo geth --sepolia --datadir "/data/ethereum" --http --authrpc.addr localhost --authrpc.vhosts="localhost"  --authrpc.port 8551 --authrpc.jwtsecret=/secrets/jwt.hex --syncmode full;
    ;;
    8)
        sudo geth --sepolia --datadir "/data/ethereum" --http --http.api eth,net,web3 --http.addr "0.0.0.0" --http.port 8545 --http.corsdomain '*' --authrpc.addr localhost --authrpc.vhosts="localhost" --authrpc.port 8551 --authrpc.jwtsecret=/secrets/jwt.hex --syncmode full
    ;;
    9)
        sudo geth --sepolia --datadir "/data/ethereum" --http --authrpc.addr localhost --authrpc.vhosts="localhost"  --authrpc.port 8551 --authrpc.jwtsecret=/secrets/jwt.hex --syncmode full --gcmode archive;
    ;;
    10)
        sudo geth --sepolia --datadir "/data/ethereum" --http --http.api eth,net,web3 --http.addr "0.0.0.0" --http.port 8545 --http.corsdomain '*' --authrpc.addr localhost --authrpc.vhosts="localhost" --authrpc.port 8551 --authrpc.jwtsecret=/secrets/jwt.hex --syncmode full --gcmode archive
    ;;
    11)
        sudo geth --sepolia --datadir "/data/ethereum" --http --authrpc.addr localhost --authrpc.vhosts="localhost"  --authrpc.port 8551 --authrpc.jwtsecret=/secrets/jwt.hex --syncmode snap;
    ;;
    12)
        sudo geth --sepolia --datadir "/data/ethereum" --http --http.api eth,net,web3 --http.addr "0.0.0.0" --http.port 8545 --http.corsdomain '*' --authrpc.addr localhost --authrpc.vhosts="localhost" --authrpc.port 8551 --authrpc.jwtsecret=/secrets/jwt.hex --syncmode snap
    ;;
    13)
        sudo geth --holesky --datadir "/data/ethereum" --http --authrpc.addr localhost --authrpc.vhosts="localhost"  --authrpc.port 8551 --authrpc.jwtsecret=/secrets/jwt.hex --syncmode full;
    ;;
    14)
        sudo geth --holesky --datadir "/data/ethereum" --http --http.api eth,net,web3 --http.addr "0.0.0.0" --http.port 8545 --http.corsdomain '*' --authrpc.addr localhost --authrpc.vhosts="localhost" --authrpc.port 8551 --authrpc.jwtsecret=/secrets/jwt.hex --syncmode full
    ;;
    15)
        sudo geth --holesky --datadir "/data/ethereum" --http --authrpc.addr localhost --authrpc.vhosts="localhost"  --authrpc.port 8551 --authrpc.jwtsecret=/secrets/jwt.hex --syncmode full --gcmode archive;
    ;;
    16)
        sudo geth --holesky --datadir "/data/ethereum" --http --http.api eth,net,web3 --http.addr "0.0.0.0" --http.port 8545 --http.corsdomain '*' --authrpc.addr localhost --authrpc.vhosts="localhost" --authrpc.port 8551 --authrpc.jwtsecret=/secrets/jwt.hex --syncmode full --gcmode archive
    ;;
    17)
        sudo geth --holesky --datadir "/data/ethereum" --http --authrpc.addr localhost --authrpc.vhosts="localhost"  --authrpc.port 8551 --authrpc.jwtsecret=/secrets/jwt.hex --syncmode snap;
    ;;
    18)
        sudo geth --holesky --datadir "/data/ethereum" --http --http.api eth,net,web3 --http.addr "0.0.0.0" --http.port 8545 --http.corsdomain '*' --authrpc.addr localhost --authrpc.vhosts="localhost" --authrpc.port 8551 --authrpc.jwtsecret=/secrets/jwt.hex --syncmode snap
    ;;
    *) echo "Invalid Argument. Enter a valid type."
esac