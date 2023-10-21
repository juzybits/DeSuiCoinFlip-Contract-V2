#!/usr/bin/env bash
set -xueo pipefail

# Calls `coin_flip_v2::create_house()`

# PACKAGE_ID=0xdc6160acd35ecf8d86a945525b53399723f76e971f35cc6f4f699a583f94303b # mainnet
PACKAGE_ID=0x6e8e7249cf6d4899d9f20da6aad899b8774df7103e6dc24d9124a1dc68929541 # localnet

# Function arguments
TYPE_0='0x2::sui::SUI'
ADMIN_CAP=0xec17e10fa6ecb389a737f9a5327c077bdf6768bda51cdbe11c622fcd641f4c71 # localnet
PUB_KEY='[0, 1, 2, 3]' # dummy public key
FEE_RATE=10000
MIN_STAKE_AMOUNT=1000000000
MAX_STAKE_AMOUNT=125000000000
INIT_FUND=.... # Coin<SUI>

sui client call \
 --package $PACKAGE_ID \
 --module coin_flip_v2 \
 --function create_house \
 --type-args $TYPE_0 \
 --args $ADMIN_CAP "$PUB_KEY" $FEE_RATE $MIN_STAKE_AMOUNT $MAX_STAKE_AMOUNT $INIT_FUND \
 --gas-budget 100000000

### INFO ###

# mainnet House object:
# https://suiexplorer.com/object/0x464ea97815fdf7078f8d0358dcc8639afba8c53c587d5ce4217940e9870e8e74?network=mainnet
