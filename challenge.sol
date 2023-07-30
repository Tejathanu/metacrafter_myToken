// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;


contract mytoken{
    // public varibals here
    string public tokenname ="META";
    string public tokenabbry="MTA";
    uint public totalSupply =0;

    //   mapping varibuls here
mapping( address => uint) public balances;

// mint functions
   function mint (address _address,uint _value)public{
       totalSupply += _value;
       balances[_address] += _value;
   }

//burn function
   function burn (address _address,uint _value)public{
      if(balances[_address]>=_value){
       totalSupply -= _value;
       balances[_address] -= _value;
      }
   }
}