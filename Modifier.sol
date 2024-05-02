// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.17;

// FUNCTION MODIFIER

// IMPORTTANT POINTS(NOTES) ABOUT ACCESS MODIFIER

// MODIFIER ARE THE CODE USED TO RUN THE CODE BEFORE AND AFTER THE FUNCTION CALL,
// GENERALLY USED FOR 3 REASONS
// 1- Restrict access , 2- Validate inputs, 3- Guard against reentrancy-hack

contract Modifier {
    // address public owner;
    // uint256 public x = 10;
    // bool public locked;

    // constructor() {
    //     owner = msg.sender;
    // }

    // modifier onlyOwner() {
    //     require(msg.sender == owner, "Not a owner");
    //     _;
    // }

    // modifier validateDATA(address _addr) {
    //     require(_addr != address(0), "Not a valid address");
    //     _;
    // }

    // function changeOwner(address _newOwner) public onlyOwner validateDATA(_newOwner) {
    //     owner = _newOwner;
    // }

    address public owner;
    uint256 public x = 23;
    bool public locaked;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Not owner");
        _;
    }

    modifier validateData(address _newAddr) {
        require(_newAddr != address(0), "Not a valid address");
        _;
    }

    function changeOwner(address _newOwner)
        public
        onlyOwner
        validateData(_newOwner)
    {
        owner = _newOwner;
    }

    modifier noReentrancy() {
        require(!locaked, "No reentrancy");
        locaked = true;
        _;
        locaked = false;
    }

    function decrement(uint256 _i) public {
        x -= 1;
        if (_i > 1) {
            decrement(_i - 1);
        }
    }
}
