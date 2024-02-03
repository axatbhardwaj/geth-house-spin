#!/bin/bash

curl https://sh.rustup.rs -sSf | sh -s -- -y --profile default --default-toolchain stable
source $HOME/.cargo/env

reset