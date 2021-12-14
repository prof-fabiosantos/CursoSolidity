// SPDX-License-Identifier: MIT
pragma solidity ^0.8.6;

contract MyMappings {

    mapping(address => uint) internal userLevel;

    function getCurrentLevel(address _userAddress) public view returns (uint) {
        return userLevel[_userAddress];
    }

    function addAdress(address _userAdress, uint _userLevel) public {
        userLevel[_userAdress] = _userLevel;
    }

}