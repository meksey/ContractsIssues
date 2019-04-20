contract MyContract
{
  mapping(address => uint) public balances;

  function withdrawMoney(uint _amount) public
  {
    require(balances[msg.sender] >= _amount);
    balances[msg.sender] -= _amount;
    msg.sender.send(_amount)
  }
}

// 3.1.4.	3.1.4.	Unchecked return values for low level calls ЛИСТИНГ 6
