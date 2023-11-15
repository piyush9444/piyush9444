// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract MyToken {

    // public variables here
    string public TokenName = "PIYUSH9444";
    string public TokenSymbol = "PIYUSH";
    uint public TokenSupply = 0;

    // mapping variable here
    mapping (address => uint) public balance;

    // mint function here
    function mint(address _address, uint _value) public {
      TokenSupply += _value;
      balance[_address] += _value;
    }

    // burn function here
    function burn(address _address, uint _value) public {
       if (balance[_address] >= _value) {
          TokenSupply -= _value;
         balance[_address] -= _value;
      } 
    }
}
