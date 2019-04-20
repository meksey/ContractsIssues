pragma solidity ^0.5.1;

library MySafeMath {
  //Сложение
  function add(uint a, uint b) public constant returns(uint) {
    uint c = a + b;
    assert(c >= a);
    return c;
  }

  // Вычитание
  function sub(uint a, uint b) public constant returns(uint) {
    assert(b <= a);
    return a - b;
  }

  // Умножение
  function mul(uint a, uint b) public constant returns(uint) {
    uint = a * b;
    assert(a == 0 || c/a = b)
    return c;
  }

  // Деление
  function div(uint a, uint b) public constant returns(uint) {
    uint c = a/b;
    return c;
  }
}
