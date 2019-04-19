pragma solidity ^0.5.1;

contract SolveTheHash
{
  address public owner;
  bool public solved;
  uint public reward;
  bytes32 public diff;
  bytes public solution;
  constructor()
  {
    owner = msg.sender;
    reward = msg.value;
    solved = false;
    diff = bytes32(11111); // Сложность
  }
  function()
  {
    if (msg.data.length > 0)
    { // Отправка решения
      if (locked) throw;
      if (sha256(msg.data) < diff)
      {
        msg.sender.send(reward); // Отправка вознаграждения
        solution = msg.data;
        solved = true;
      }
    }
  }
}
