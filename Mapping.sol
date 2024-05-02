// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.17;

contract Mapping {
    mapping(address => uint256) public myMap;

    function get(address _addr) public view returns (uint256) {
        return myMap[_addr];
    }

    function set(address _addr, uint256 _i) public {
        myMap[_addr] = _i;
    }

    function remove(address _addr) public {
        delete myMap[_addr];
    }
}

contract NestedMapping {
    mapping(address => mapping(uint256 => bool)) public Nested;

    // We can get the values from nested mapping even it is not initilized
    function get(address _addr, uint256 _i) public view returns (bool) {
        return Nested[_addr][_i];
    }

    function set(address _addr, uint256 _i, bool _boo) public {
       Nested[_addr][_i] = _boo;
    }


    function remove(address _addr, uint256 _i) public  {
        delete Nested[_addr][_i];
    }
}
