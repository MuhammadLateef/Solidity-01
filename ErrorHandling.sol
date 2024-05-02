// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.17;

contract Require {
    //THE REQUIRE IS USED WHEN WE CHECK THE CONDITION AND DISPLAY THE MESSAGE ..!
    function checkInput(uint256 _input) public view returns(string memory) {
        require(_input>=0,"Invalid uint8");
        require(_input<=255, "Invalid uint8");
        return "Input is Uin8";
    }

    function Odd(uint _input) public view returns(bool) {
        require(_input%2!=0);
        return true;
    }
}


contract AssertStatement {
    // THE ASSERT STATEMENT IS USED WHEN WE CHECK ONLY CONDITION...!
    bool result;
    function CheckAssert(uint256 _x, uint256 _y) public {
       uint256 sum = _x*_y-245;
        assert(sum<=250);
       result = true;
    }

    function getResult() public view returns (string memory) {
        if(result==true) {
            return "the result is overflow";
        } else {
            return  "No overfolw";
        }
    } 
}


contract RevertStatement{
    //  THE THE REVERT KEY WORD USUALLY USED TO CHECK THE IF ELSE BASE CONDTION AND DETECT THE ERRORS;
    function checkOverFlow(uint256 _num1, uint256 _num2) public view returns (string memory) {
        uint256 sum = _num1 + _num2;
        if(sum<0 || sum>255) {
            revert("Overflow exist");
        }  else {
            return "No overflow is exits";
        }
    }
}