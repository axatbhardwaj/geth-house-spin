#!/bin/bash

set -e 

# Cloning the repo for lighthouse
git clone https://github.com/sigp/lighthouse.git
cd lighthouse
git checkout stable

echo "INFO: Starting build of Lighthouse"

export PATH="$HOME/.cargo/bin:$PATH"
make

reset
