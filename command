user1 = "0xdc7eeffa98d1c36dd6568e493ef8aa6eeaf7c4f5"
user1: Address: {dc7eeffa98d1c36dd6568e493ef8aa6eeaf7c4f5}
enode://640c4298e0f9533a1835878e641342929543fc248af6d34499c10bf188d51d5181c7c82fd8882270e8f048e068f5389a51978f238a056fd837ad5359dfd04a78@127.0.0.1:2000

user2 = "0xc051efc823e05d6d4a15a956f65be5584b9d39e4"
user2: Address: {c051efc823e05d6d4a15a956f65be5584b9d39e4}

miner1 = "0x10ece5cb6bb9be3fea3560330c46f1b591648b32"
miner1: Address: {10ece5cb6bb9be3fea3560330c46f1b591648b32}


miner2 = "0x398DE0aB0Bde7015AfFc36d60997CcEb7Fa1EbE3"
miner2: Address: {}


user:
geth --datadir ./data --networkid 7788 --port 2000 console

miner:
geth --datadir ./data --networkid 7788 --port 2002 --unlock 10ece5cb6bb9be3fea3560330c46f1b591648b32 console
geth --datadir ./data --networkid 7788 --port 2003 --unlock 398DE0aB0Bde7015AfFc36d60997CcEb7Fa1EbE3 console


admin.addPeer("enode://640c4298e0f9533a1835878e641342929543fc248af6d34499c10bf188d51d5181c7c82fd8882270e8f048e068f5389a51978f238a056fd837ad5359dfd04a78@127.0.0.1:2000")

geth --datadir ./data account new
puppeth
geth --datadir node1/data init poa_for_fun.json 

eth.getBalance(user1)
eth.getBalance(user2)

personal.unlockAccount(user1)

eth.getBlock("pending", true).transactions


personal.unlockAccount(web3.eth.accounts[0], password)

eth.pendingTransactions

clerar pending transactions
1. Exit geth
2. Delete your geth/transactions.rlp file
3. Restart geth and pending transactions should be empty (running eth.pendingTransactions outputs [])
