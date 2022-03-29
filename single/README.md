# geth-poa

geth-poa 单节点

## 命令

- 创建用户

./geth --datadir gopperin account new

- puppeth

- 启动节点

geth --datadir gopperin init gopperin.json

geth --datadir gopperin --port 31913  --nodiscover --rpc --rpcaddr 0.0.0.0 --rpcport 8545 --rpccorsdomain "*" --rpcapi "db,eth,net,web3,personal,miner" --syncmode "full" console --allow-insecure-unlock --rpc.allow-unprotected-txs

- 查看区块数据

eth.blockNumber

- 查看coinbase

eth.accounts

- 解锁账户 地址，密码，时间

personal.unlockAccount(eth.coinbase,"Aa1111",1000000)

- 配置默认账户

eth.defaultAccount = eth.coinbase

- 启动挖矿

miner.start()

返回结果为true则启动成功，具体执行情况可查看日志。

- 停止挖矿

miner.stop()

当在执行挖矿时日志会不停刷屏，不用管，只要命令输入全，执行即可停止挖矿。

- 查看账户余额

其中参数为区块链地址

eth.getBalance("0x5421ba6f7ff709a937d698927ffa771656648aa4")

eth.getBalance("0x565446eaa968a3b5d9bd35b980f3defbecc6c220")

- 转账

从账户 0x5421ba6f7ff709a937d698927ffa771656648aa4 转账1000个以太币到 0x565446eaa968a3b5d9bd35b980f3defbecc6c220

eth.sendTransaction({from:"0x5421ba6f7ff709a937d698927ffa771656648aa4",to:"0x565446eaa968a3b5d9bd35b980f3defbecc6c220",value:web3.toWei(1000,"ether")})

eth.sendTransaction({from:"0x5421ba6f7ff709a937d698927ffa771656648aa4",to:"0xDb5f55193a4dFa5915fB40B0F9cd65C718D158bD",value:web3.toWei(1000,"ether")})

- 解锁

personal.unlockAccount("0x2fd23cccc5368e9a774e742f3aff54c0645dfff3","Aa1111")

解锁完成之后，即可执行转账操作。但此时查看时会发现接收账户依旧为原来数值。此时需要执行挖矿命令，才会把转账真正完成。
