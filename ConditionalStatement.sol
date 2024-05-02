// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.17;
 

contract conditional_statement {
    uint256 public muNum1 = 5;
    string public  myString;

    // function get(uint256 _muNum1) public returns (string memory) {
    //     if(_muNum1 >=0 && _muNum1<=10) {
    //         myString = "the first number lies between 0 to 10";
    //     } else {
    //         myString = "the number lies not inthe range";
    //     }
    // }

    function shortHand(uint256 _muNum) public  returns (string memory) {
        // if(_muNum==5) {
        //     myString = "the number is equal to 5";
        // } else {
        //     myString = "the given number is not equal to 5";
        // } 

      return  _muNum==5 ? myString = "the number is equal to 5" : myString = "the given number is not equal to 5";
    }
}