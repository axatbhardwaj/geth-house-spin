# Node on Demand Readme

This is a Project which is responsible for spinning up a Node for Ethereum using geth and lighthouse as execution and conseneus client respectively

How to use

1. execute the script Install.sh in installation directory
2. Execute the script nodeUP.sh Script present in nodeUp directory

The nodeUp.sh script accepts two arguments as integers

1. First argument for the Type of execution client
   1. 1 full node without RPC
   2. 2 full node with RPC
   3. 3 archive node without rpc
   4. 4 archive node with RPC
   5. 5 snap node without RPC
   6. 6 snap node with RPC
2. Second argument for the Type of execution client you want
   1. 1 without staking
   2. 2 with staking (avoid using this)
