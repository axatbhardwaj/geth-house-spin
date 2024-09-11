# Node on Demand Readme

This is a Project which is responsible for spinning up a Node for Ethereum using geth and lighthouse as execution and consensus client respectively.

## How to use

1. Execute the script `Install.sh` in the `installation` directory.
2. Execute the script `nodeUp.sh` present in the `nodeUp` directory.

The `nodeUp.sh` script accepts two arguments as integers:

1. First argument for the Type of execution client:

   1. 1 full node without RPC (Mainnet)
   2. 2 full node with RPC (Mainnet)
   3. 3 archive node without RPC (Mainnet)
   4. 4 archive node with RPC (Mainnet)
   5. 5 snap node without RPC (Mainnet)
   6. 6 snap node with RPC (Mainnet)
   7. 7 full node without RPC (Sepolia)
   8. 8 full node with RPC (Sepolia)
   9. 9 archive node without RPC (Sepolia)
   10. 10 archive node with RPC (Sepolia)
   11. 11 snap node without RPC (Sepolia)
   12. 12 snap node with RPC (Sepolia)

2. Second argument for the Type of consensus client:
   1. 1 without staking (Mainnet)
   2. 2 with staking (Mainnet)
   3. 3 without staking (Sepolia)
   4. 4 with staking (Sepolia)
