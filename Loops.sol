// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.17;

contract WhileLoop {
    uint256[] data;
    uint256 k = 0;

    function loop() public returns (uint256[] memory) {
        while (k < 100) {
            k++;
            data.push(k);
        }
        return data;
    }
}


contract DoWhileLoop {
            uint256[] data;
            uint256 j = 0;
    function Dowhileloop() public returns (uint256[] memory) {
        do{
            j++;
            data.push(j);
        } while (j<5);
            return data;
    
    }
}

contract ForLoop {
    uint256[] data;
   function forloop() public returns(uint256[] memory) {
    for(uint i = 0; i<5; i++) {
        data.push(i);
    
    }
    return data;
   }  
}