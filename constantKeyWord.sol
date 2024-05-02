// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.17;

contract Constant {
    // CONSTANT IS USED IN SOLIDITY THE VALUE NEVER CHANGE ACCORS THE PROGRAM IT REDUCE THE GAS EXECUTION FEES;
    // FIRST WE CHECK WITHOUT USING CONSTANT
    // address public myAddr = 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2;
    // 2483 gas
   
    // same above code using constant
    address public constant MY_ADDR =
        0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2;
         // 351 gas
}
