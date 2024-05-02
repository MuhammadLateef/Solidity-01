// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.17;

contract Array {
    // // SEVERALS WAYS TO INITIALIZED ARRAY
    // uint256[] public arr;
    // uint256[] public arr2 = [1, 2, 3, 4];
    // // fixed size array
    // uint256[10] public fixedSizArr;

    // function get(uint256 i) public view returns (uint256) {
    //     return arr[i];
    // }

    // // solidity can return the entire array
    // // but this function should be avoided for
    // // arrays that can grow indefinitly in lenght

    // function getArr() public view returns (uint256[] memory) {
    //     return arr;
    // }

    // function push(uint256 i) public {
    //     // Append to array
    //     // this will increase the array lenght by 1
    //     arr.push(i);
    // }

    // function pop() public {
    //     // remove the last from array

    //     arr.pop();
    // }

    // function getLength() public view returns (uint256) {
    //     return arr.length;
    // }

    // function remove(uint256 index) public {
    //     delete arr[index];
    // }

    // -------------------------- practice array ------------------ 


    uint[] public arr;
    uint[] public arr2 = [12,34,55];
    uint[10] public fixedSizeArray;

    function get(uint256 i) public view returns(uint) {
        return arr[i];
    }

    function getArr() public view returns (uint[] memory){
        return arr;
    }

    function push(uint256 i) public {
      arr.push(i);
    } 

    function pop() public {
        arr.pop();
    }

    function removeArr(uint256 index) public  {
        delete arr[index];
    }

    function getLength() public view returns (uint256 )  {
       return  arr.length;
    }
}


contract ArrayRemoveByShifting {
    uint256[] public arr;
    function removebyshifting(uint256 _index) public {
        for (uint256 i = _index; i< _index; i++) {
            arr[i] = arr[i+1];
        }
        arr.pop();
    }

    function text() external  {
        arr = [23,34,45,56];
        removebyshifting(2);
        assert(arr[0] == 1);
        assert(arr[1] == 2);
        assert(arr[2] == 56);
        assert(arr.length == 4);
        arr = [1];
        removebyshifting(0);
        // []
        assert(arr.length == 0);
    }
 }

 contract ArrayRemoveLastElement{ 
    uint256[] public arr;

    function remove(uint index) public {
        arr[index] = arr[arr.length - 1];
        arr.pop();
    }

    function test() public  {
        arr = [12,34,5,6,7,76];
        remove(1);
        // [12,76,5,6,7]
        assert(arr.length == 5);
        assert(arr[0] == 12);
        assert(arr[1] == 76);
        assert(arr[2] == 5);
        assert(arr[3] == 6);
        assert(arr[4] == 7);
        remove(2);
        // [12,76,7,6]
        assert(arr.length == 4);
        assert(arr[0] == 12);
        assert(arr[1] == 76);
        assert(arr[2] == 7);
        assert(arr[3] == 6);
        // assert(arr.length == 0);
    }
  }