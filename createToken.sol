// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

/*
       REQUIREMENTS
    1. Your contract will have public variables that store the details about your coin (Token Name, Token Abbrv., Total Supply)
    2. Your contract will have a mapping of addresses to balances (address => uint)
    3. You will have a mint function that takes two parameters: an address and a value. 
       The function then increases the total supply by that number and increases the balance 
       of the “sender” address by that amount
    4. Your contract will have a burn function, which works the opposite of the mint function, as it will destroy tokens. 
       It will take an address and value just like the mint functions. It will then deduct the value from the total supply 
       and from the balance of the “sender”.
    5. Lastly, your burn function should have conditionals to make sure the balance of "sender" is greater than or equal 
       to the amount that is supposed to be burned.
*/

contract createToken {

    // public variables here
    string public name;
    string public symbol;
    unit256 public totalSupply;

    // mapping variable here
    mapping(address => uint) public balances;
    
    address public owner;
    
    modifier onlyOwner() {
      require(msg.sender == owner, "Only the contract Owner can call this function");
      _;
    }
    
    constructor(string memory _name, string memory _symbol, uint32 _totalSupply {
      name = _name; 
      symbol = _symbol;
      totalSupply = _totalSupply;
      balances[msg.sender] = _totalSupply;
      owner = msg.sender;
    }

    // mint function
    function mint(address _to, uint32 _amount) external onlyOwner {
      totalSupply += _amount;
      balances[_to] += _amount;
    }
    

    // burn function
    function burn(uint32 _amount) external {
      require(balances[msg.sender] >= _amount, "Insufficient Balance");
      totalSupply -= _amount;
      balances[msg.sender] -= _amount;
    }

}
