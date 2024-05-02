// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.17;

contract Pure {
    uint256 num1 = 34;
    uint256 num2 = 10;

    function getData() public pure returns (uint256 ,  uint256) {
        uint256 muNum1 = 40;
        uint256 muNum2 = 56;

        uint256 products = muNum1 + muNum2;
        uint256 totals = muNum1 * muNum2;
        return (products, totals);
    }
}