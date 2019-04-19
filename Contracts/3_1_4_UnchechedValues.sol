contract MyContractA
{
  mapping(address => uint) public balances;

  function withdrawMoney(uint _amount) public
  {
    require(balances[msg.sender] >= _amount);
    balances[msg.sender] -= _amount;
    msg.sender.send(_amount)
  }
}

contract MyContractB
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


// 3.1.4.	3.1.4.	Unchecked return values for low level calls ЛИСТИНГ 6
