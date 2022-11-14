// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract paypal{
    event transactions (address indexed from, address to, uint amount, string symbol);
    event recipients (address recipientOf, address recipient, string name);
   
    function sendtx( address payable _to, string memory symbol ) public payable{
        _to.transfer(msg.value);
        emit transactions(msg.sender, _to, msg.value, symbol);

    }

    function storetx(address from, address to, uint amount, string memory symbol) public{
        emit transactions(from, to, amount, symbol);
    }

    function addrecepient(address _recepient, string memory name) public{
        emit recipients(msg.sender, _recepient, name);


    }
    
}