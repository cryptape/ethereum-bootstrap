pragma solidity >=0.4.0 <0.6.0;

contract Token {
    address issuer;
    mapping (address => uint) public balances;

    event Issue(address account, uint amount);
    event Transfer(address from, address to, uint amount);

    constructor (address _issuer) public {
        _issuer = msg.sender;
        issuer = _issuer;
    }

    function issue(address account, uint amount) public {
        require(msg.sender == issuer);
        balances[account] += amount;
    }

    function transfer(address to, uint amount) public {
        require(balances[msg.sender] >= amount);

        balances[msg.sender] -= amount;
        balances[to] += amount;

        emit Transfer(msg.sender, to, amount);
    }

    function getBalance(address account) public view returns (uint) {
        return balances[account];
    }
}
