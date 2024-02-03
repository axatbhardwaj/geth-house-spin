#!/bin/bash

set -e 


echo "INFO :adding ppa for eth installation"
add-apt-repository -y ppa:ethereum/ethereum
apt-get update

echo "INFO :  installing ethereum"

 apt-get install ethereum -y

echo "INFO : checking and updating geth"
 apt-get upgrade geth -y


reset