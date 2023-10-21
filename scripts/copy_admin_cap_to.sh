#!/usr/bin/env bash
set -xueo pipefail

# Calls `coin_flip_v2::copy_admin_cap_to()`

# PACKAGE_ID=0xdc6160acd35ecf8d86a945525b53399723f76e971f35cc6f4f699a583f94303b # mainnet
PACKAGE_ID=0x6e8e7249cf6d4899d9f20da6aad899b8774df7103e6dc24d9124a1dc68929541 # localnet

# Function arguments
TYPE_0=u8 # unused
ADMIN_CAP=0xec17e10fa6ecb389a737f9a5327c077bdf6768bda51cdbe11c622fcd641f4c71 # localnet
RECIPIENT=.... # recipient of the new AdminCap

sui client call \
 --package $PACKAGE_ID \
 --module coin_flip_v2 \
 --function copy_admin_cap_to \
 --type-args $TYPE_0 \
 --args $ADMIN_CAP $RECIPIENT \
 --gas-budget 100000000
