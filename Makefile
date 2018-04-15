.PHONY: help gatling

all: help

help:
	cat Makefile

run_private:
	geth --networkid '10' --nodiscover --datadir ~/geth/private_net --rpc --rpcaddr 'localhost' \
	--rpcport '8545' --rpccorsdomain '*' --rpcapi 'eth,net,web3,personal' --targetgaslimit '20000000' \
	console 2>> ~/geth/private_net/error.log
