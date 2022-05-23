const data = await web3.eth.getStorageAt("0xB1B1a9E2923B3206976471873d21214fb6788481", 5);
const key = '0x' + data.slice(2, 34);
await contract.unlock(key);