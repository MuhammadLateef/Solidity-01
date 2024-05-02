// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.17;

contract EventTickets {
    uint256 public numberOfTickets;
    uint256 public ticketPrice;
    uint256 public totalAmount;
    uint256 public StartAt;
    uint256 public EndAt;
    uint256 public timeRange;
    string public message = "BUY TICKETS TO BOOKING FOR THE GREAT EVENT";

    constructor(uint256 _ticketPrice) {
        ticketPrice = _ticketPrice;
        StartAt = block.timestamp;
        EndAt = block.timestamp + 7 days;
        timeRange = (EndAt - StartAt)/60/60/24;
    }

    function buyTicket(uint256 _value) public returns(uint256 ticketId) {
        numberOfTickets++;
        totalAmount+= _value;
        ticketId = numberOfTickets;
    }
    function getAmount() public view returns (uint256) {
        return totalAmount;
    }
}
