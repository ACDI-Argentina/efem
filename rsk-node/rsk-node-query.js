var Web3 = require('web3');

hex = '0xbce9b995000000000000000000000000cd2a3d9f938e13cd947ec05abc7fe734df8dd826000000000000000000000000cd2a3d9f938e13cd947ec05abc7fe734df8dd826';
out = Web3.utils.toAscii(hex);
console.log(out);
/*
var web3 = new Web3("http://localhost:4444");

web3.eth.net.getId().then(id => {
    console.log('Network Id ' + id);
});

web3.eth.net.getNetworkType().then(networkType => {
    console.log('Network Type ' + networkType);
});

web3.eth.getAccounts().then(accounts => {
    console.log('Accounts');
    console.log(accounts);
});

web3.eth.getBlockNumber().then(blockNumber => {
    console.log('Block Number: ' + blockNumber);
});

let block = 20000;
web3.eth.getBlock(block).then(block => {
    console.log('Block Info: ' + block);
    console.log(block);
});

let transactionHash = '0xace342851a8a06517ba256e5a0436c6e5f17c19e5e5eb1dcb394e765a7a8d0f8';
web3.eth.getTransaction(transactionHash).then(transaction => {
    console.log('Transaction: ' + transactionHash);
    console.log(transaction);
});*/