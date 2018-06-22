# geth-poa

geth-poa

## 命令

- 查看账户

eth.accounts

- 创建用户：

personal.newAccount("111111")

其中参数为此账户的密码。也可以先创建账户，然后输入密码：

personal.newAccount()

- 查看区块数据

eth.blockNumber

- 启动挖矿

miner.start()

返回结果为true则启动成功，具体执行情况可查看日志。

- 停止挖矿

miner.stop()

当在执行挖矿时日志会不停刷屏，不用管，只要命令输入全，执行即可停止挖矿。

- 查看账户余额

其中参数为区块链地址

eth.getBalance("0x762009cd5dcabb5a125008d70f5efdbdff2aa782")

eth.getBalance("0x571ac5c2fb70d8553b593b1efb4a2524e01bb3e6")

- 转账

从账户0x762009cd5dcabb5a125008d70f5efdbdff2aa782转账1000个以太币到0x571ac5c2fb70d8553b593b1efb4a2524e01bb3e6。

eth.sendTransaction({from:"0x762009cd5dcabb5a125008d70f5efdbdff2aa782",to:"0x571ac5c2fb70d8553b593b1efb4a2524e01bb3e6",value:web3.toWei(1000,"ether")})

- 解锁

personal.unlockAccount("0x762009cd5dcabb5a125008d70f5efdbdff2aa782","a11111")

解锁完成之后，即可执行转账操作。但此时查看时会发现接收账户依旧为原来数值。此时需要执行挖矿命令，才会把转账真正完成。