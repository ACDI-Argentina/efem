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

/*
const LPFactoryArtifact = require('giveth-liquidpledging/dist/contracts/LPFactory.json');
const InputDataDecoder = require('ethereum-input-data-decoder');
const decoder = new InputDataDecoder(LPFactoryArtifact.abiDefinition);

//const data = `0xbce9b995000000000000000000000000cd2a3d9f938e13cd947ec05abc7fe734df8dd826000000000000000000000000cd2a3d9f938e13cd947ec05abc7fe734df8dd826`;
const data = `0xa2ba31079c60e1d3e08c942e71464be06621a328ca81a1e9fe0c59c2b5e19ba2`;
const result = decoder.decodeData(data);
console.log(result);*/


var web3 = new Web3("http://localhost:4444");
//from = '0xCD2a3d9F938E13CD947Ec05AbC7FE734Df8DD826';
/*from = '0x7986b3DF570230288501EEa3nodeD890bd66948C9B79';
web3.eth.getBalance(from).then(balance => {
    console.log(`Balance ${from}: ${balance}`);
});*/

block = '0x8bb5228923c50ecfbf51834c0543ff491d60e07eb172fb251c09b7c51ee7c927';
web3.eth.getBlock(block).then(b => {
    console.log(b);
});