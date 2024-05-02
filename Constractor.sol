// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.17;

// BASE CONTRACT X
    contract X {
        string public name;
        constructor(string memory _name) {
            name = _name;
        }
    }

// BASE CONTRACT Y

    contract Y {
        string public text;
        constructor(string memory _text) {
            text = _text;
        }  
    }
    // THERE ARE 2 WAYS TO INITIALIZE PARENT PARAMETER..
    // ... PASS THE PARAMETERS HERE IN THE INHERITANCE LIST 

    contract B is X("Input to x"), Y("Input to y"){}

    contract C is X, Y{
        // pass the paramenter here inthe constructor
        // similar to function modifier
        constructor(string memory _name, string memory _text) X(_name) Y(_text) {}
    }


    // Parent constructor are always called in the order of inharitance 
    // regardless of the order of parent contracts listed in the 
    // constructor of the child contract 

// order of constructor called 
// 1 : X
// 2 : Y 
// 3 : D


    contract D is X, Y {
    constructor() X("Input X is called") Y("Input Y is called") {}
    }

    // Order of constructor
    // 1 : X
    // 2 : Y 
    // 3 : E 
    

    contract E is X, Y {
        constructor() X("X is called on E") Y("Y is called on E") {}
    }