// SPDX-License-Identifier: MIT

pragma solidity ^0.8.17;
import "Enums/EnumDeclaration.sol";
contract EnumStatus {
    // neum means Enumerable   

    // default  value is the first element listed in
    // definition of the type, in this case "Pending"
    Status public status;
    // Returns uint
    // Pending -0
    // Shipped -1
    // Accepted -2
    // Rejected -3
    // Cancalled -4

    function get() public view returns (Status) {
        return status;
    }

    // Update status by passing uint into the input;

    function set(Status _status) public {
        status = _status;
    }

    function cancel() public {
        status = Status.Canclled;
    }

    function reset() public {
        delete  status;
    }
}
