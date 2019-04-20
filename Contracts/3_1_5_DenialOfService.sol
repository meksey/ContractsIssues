pragma solidity ^0.5.1;

contract MyContract
{
  function give_presents(address[] _winners) public
  {
    uint len = _winners.length;
    for (uint i=0; i<len; i++)
    {
      require(_winners[i].send(10));
    }
  }
}
