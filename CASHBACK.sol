pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract CASHBACK is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function CASHBACK(address _owner)  UpgradeableToken(_owner) {
    name = "CASHBACK";
    symbol = "CBK";
    totalSupply = 1000000000000000;
    decimals = 6;

    balances[_owner] = totalSupply;
  }
}