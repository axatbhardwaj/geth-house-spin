# Node on Demand Readme

This is a Project which is responsible for spinning up a Node for Ethereum using geth and lighthouse as execution and consensus client respectively.

## How to use

1. Execute the script `Install.sh` in the `installation` directory.
2. Execute the script `nodeUp.sh` present in the `nodeUp` directory.

The `nodeUp.sh` script accepts two arguments as integers:

1. First argument for the Type of execution client:

   - 1 full node without RPC (Mainnet)
   - 2 full node with RPC (Mainnet)
   - 3 archive node without RPC (Mainnet)
   - 4 archive node with RPC (Mainnet)
   - 5 snap node without RPC (Mainnet)
   - 6 snap node with RPC (Mainnet)
   - 7 full node without RPC (Sepolia)
   - 8 full node with RPC (Sepolia)
   - 9 archive node without RPC (Sepolia)
   - 10 archive node with RPC (Sepolia)
   - 11 snap node without RPC (Sepolia)
   - 12 snap node with RPC (Sepolia)
   - 13 full node without RPC (Holesky)
   - 14 full node with RPC (Holesky)
   - 15 archive node without RPC (Holesky)
   - 16 archive node with RPC (Holesky)
   - 17 snap node without RPC (Holesky)
   - 18 snap node with RPC (Holesky)

2. Second argument for the Type of consensus client:

   - 1 without staking (Mainnet)
   - 2 without staking (Mainnet) with RPC
   - 3 with staking (Mainnet)
   - 4 with staking (Mainnet) with RPC
   - 5 without staking (Sepolia)
   - 6 without staking (Sepolia) with RPC
   - 7 with staking (Sepolia)
   - 8 with staking (Sepolia) with RPC
   - 9 without staking (Holesky)
   - 10 without staking (Holesky) with RPC
   - 11 with staking (Holesky)
   - 12 with staking (Holesky) with RPC
