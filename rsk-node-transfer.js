var Web3 = require('web3');
var network = "http://localhost:4444";

console.log('');
console.log('RSK Node Status');
console.log('  Network: ' + network);
console.log('-------------------------------------------');

var web3 = new Web3(network);

var from = '0xCD2a3d9F938E13CD947Ec05AbC7FE734Df8DD826';
var to = '0x087b221Ac43309Fe635926968A7677a6e8Ea0919';
var value = web3.utils.toWei('1');

web3.eth.sendTransaction({
    from: from,
    to: to,
    value: value
});