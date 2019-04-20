pragma solidity ^0.5.1;

contract Auction {
  uint jackpot = 100 ether;
  uint public lastBid = 1 ether;
  constructor() public payable {}
  function setBid() public payable
  {
    require(msg.value >= lastBid);
    if (now%20 == 0)
    {
      msg.sender.transfer(jackpot);
    }
  }
}
