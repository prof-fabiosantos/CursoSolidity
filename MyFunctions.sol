// SPDX-License-Identifier: MIT
pragma solidity ^0.8.6;

contract MyFunctions {
   address internal owner;

    constructor(){
        owner =  msg.sender;
    }

   function getResult1() internal pure returns(uint){
      uint a = 1; // local variable
      uint b = 2;
      uint result = a + b;
      return result;
   }

    modifier onlyOwner {
        require(msg.sender == owner);
        _;
    }
    function getResult2(uint _x, uint _y) internal pure returns (uint) {
        return _x + _y;
    }
    function testeFunction1() public pure returns (uint){
       return getResult1();
    }
    function testeFunction2() public view onlyOwner returns (uint){
       return getResult2(2,4);
   }
}