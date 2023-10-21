#!/usr/bin/env bash
set -xueo pipefail

# Calls `coin_flip_v2::update_max_stake_amount()`

# PACKAGE_ID=0xdc6160acd35ecf8d86a945525b53399723f76e971f35cc6f4f699a583f94303b # mainnet
PACKAGE_ID=0x6e8e7249cf6d4899d9f20da6aad899b8774df7103e6dc24d9124a1dc68929541 # localnet

# Function arguments
TYPE_0='0x2::sui::SUI'
# ADMIN_CAP=0x5c3231db13337a083e072a5bb68b43fa81c78aff46f8dd7863ecc33d42b4015f # mainnet (Shoto)
ADMIN_CAP=0xec17e10fa6ecb389a737f9a5327c077bdf6768bda51cdbe11c622fcd641f4c71 # localnet
# HOUSE=0x464ea97815fdf7078f8d0358dcc8639afba8c53c587d5ce4217940e9870e8e74 # mainnet House<SUI>
HOUSE=0x2e1c56b2fbd39ac1e82e0c968a16930cf7ece506ea129d62553b34fe920060b2 # localnet
MAX_STAKE_AMOUNT=500000000000 # 500 SUI

sui client call \
 --package $PACKAGE_ID \
 --module coin_flip_v2 \
 --function update_max_stake_amount \
 --type-args $TYPE_0 \
 --args $ADMIN_CAP $HOUSE $MAX_STAKE_AMOUNT \
 --gas-budget 100000000
