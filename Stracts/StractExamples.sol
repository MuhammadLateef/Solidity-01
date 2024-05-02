// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract EnumsExamples {
    struct Book {
        string title;
        string author;
        uint256 bookId;
    }
    Book public book;
    function setBook() public {
        book = Book("about solidity", "rupTes", 23);
    }

    function getBookId() public view returns (uint256) {
        return book.bookId;
    }
}
