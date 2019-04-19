pragma solidity ^0.5.1;

contract MyContract
{
    uint public balance;

    constructor() public
    {
        balance = 0;
    }

    function withdraw(address payable _user) public
    {
        balance = 0;
        _user.send(balance);
    }

    function() payable external
    {
        balance += msg.value;
    }
}
