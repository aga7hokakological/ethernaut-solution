await contract.locked();
// await contract.password();

await web3.eth.getStorageAt("contract address", 0);
await web3.eth.getStorageAt("contract address", 1); // Found password here

await contract.unlock("put password here");