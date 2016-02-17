#!/bin/sh

echo "***** Import all pre-funded private keys"

read -p "***** Enter password for the new wallet: " password

for key in `find /home/geth/private_keys -name '*.key'`
do
	/home/geth/private_keys/import.sh $key $password
done

echo "***** Done."
