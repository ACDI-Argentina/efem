var Web3 = require('web3');
var network = "http://localhost:4444";

console.log('');
console.log('RSK Node Status');
console.log('  Network: ' + network);
console.log('-------------------------------------------');

var web3 = new Web3(network);

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

web3.eth.getAccounts().then(accounts => {
    console.log('Balances');
    accounts.forEach(account => {
        web3.eth.getBalance(account).then(balance => {
            console.log(`Balance ${account}: ${balance}`);
        })
    });
});