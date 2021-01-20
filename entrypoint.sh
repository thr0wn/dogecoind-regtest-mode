#!/bin/bash
dogecoind -regtest -datadir=~/.dogecoin > /dev/null 2>&1
sleep 5 
dogecoin-cli -rpcport=3334 -rpcuser=root -rpcpassword=root generate 1 > /dev/null 2>&1
sleep 5
dogecoind -regtest -datadir=~/.dogecoin-2 > /dev/null 2>&1
echo "Dogecoind started!"
/bin/bash "$@"