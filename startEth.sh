#!/bin/bash
# Author: xxp
# start ethereum geth v1.8.11 privatenet and mist v0.9.2
#

# 安装geth和mist的方法，自行google
# greencomb.json通过puppeth自动生成的

# 本目录只是init后的产物
# geth --datadir node0 init greencomb.json

# set -e
# set -u

# 启动挖矿节点，默认启用POA(clique)共识算法
# coinbase账号默认有3780万个Ether
geth  \
    --datadir ./node0\
    --ws\
    --wsport 8580\
    --rpc\
    --rpcapi "eth,net,web3,admin,personal,txpool,miner,clique"\
    --rpccorsdomain "*"\
    --rpcaddr 0.0.0.0\
    --rpcport 8540\
    --mine\
    --etherbase 0x762009cd5dcabb5a125008d70f5efdbdff2aa782\
    --unlock 0x762009cd5dcabb5a125008d70f5efdbdff2aa782\
    --password ./password.txt\
    --nodiscover\
    --maxpeers '50'\
    --networkid 12759
    # &

# 再次进入console调试
# geth attach ipc:\./node0/geth.ipc


