// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Event{
    event messLog1(address indexed sender,string message);
    event messLog2(address indexed _sender,uint256 _value);
    event messLog3(address indexed from, bytes32 indexed id,uint256 value);
    event messLog4(address indexed _from,string _message);

    function test()public{
        emit messLog1(msg.sender,"Hi Everyone!");
        emit messLog2(msg.sender, 11);
        emit messLog4(msg.sender,"Hi!");
    }

    function logs(bytes32 id)public payable{
        emit messLog3(msg.sender, id, msg.value);
    }
}
