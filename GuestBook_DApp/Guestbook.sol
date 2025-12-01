// SPDX-License-Identifier: MIT
pragma solidity ^0.8.27;

contract Guestbook {

    struct Guest{
        address writer;
        string w_name; // ชื่อที่คนเขียนอยากจะลง
        string message;
        uint256 timestamp; // เวลาที่เขียน
    }

    Guest[] public messages; //
    
    event New_Msg(address indexed writer, string w_name, string message, uint256 timestamp);

    mapping(address => uint256) public checkspam;

    function Write_Msg(string memory _w_name, string memory _message) public {
        require(bytes( _message).length > 0, "Message can't be empty!");
        require(block.timestamp >= checkspam[msg.sender] + 30 seconds, "Please wait for 30 seconds");
        // block.timestamp = Unix Timestamp หรือส่วนที่เป็นการดึงค่าเวลาจริงๆมา เดี๋ยวต้องเอาไปแปลงบน frontend อีกที
        messages.push(Guest(msg.sender, _w_name, _message, block.timestamp));
        emit New_Msg(msg.sender, _w_name, _message, block.timestamp);
        checkspam[msg.sender] = block.timestamp;
    }

    function getAll_Msg() public view returns (Guest[] memory) {
        return messages;
    }

    function getTotal_Msg() public view returns (uint256) {
        return messages.length;
    }
}