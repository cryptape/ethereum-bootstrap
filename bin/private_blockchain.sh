#!/bin/bash

geth=${GETH:-geth}

$geth --datadir data --networkid 31415926 --rpc --rpccorsdomain "*" --nodiscover console
