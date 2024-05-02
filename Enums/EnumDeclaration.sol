// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;


enum Status {
    Pending,
    Shipped,
    Acceped,
    Canclled,
    Rejected
}

import "./EnumDeclaration.sol";

contract Enum {
    Status public status;
}