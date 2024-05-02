// SPDX-License-Identifier: MIT

pragma solidity ^0.8.17;

contract Todes {
    struct Todo {
        string text;
        bool completed;
    }

    //An array of 'Todo' structs

    Todo[] public todos;

    function create(string memory _text) public {
        // 3 ways to initialize the struct
        // 1 - calling it like a function
        todos.push(Todo(_text, false));
        // 2 - key value mapping
        //  todos.push(Todo({text:_text, completed: false}));
        //  // 3 - initialize an empty struct and then update it
        //  Todo memory todo;
        //  todo.text = _text;
        //  // todo compleled initialized to false
        //  todos.push(todo);
    }

    // solidity automatically created a greater for 'todos' so
    // We don't actually need this fucntion;

    function get(uint256 _index)
        public
        view
        returns (string memory text, bool completed)
    {
        Todo storage todo = todos[_index];
        return (todo.text, todo.completed);
    }

    //update text

    function updateText(uint256 _index, string calldata _text) public {
        Todo storage todo = todos[_index];
        todo.text = _text;
    }

    // updated completed;

    function toggleCompleted(uint256 _index) public {
        Todo storage todo = todos[_index];
        todo.completed = !todo.completed;
    }
}
