#!/bin/bash

geth --genesis /home/geth/genesis.json --networkid 31415926 --rpc --rpccorsdomain "*" console
