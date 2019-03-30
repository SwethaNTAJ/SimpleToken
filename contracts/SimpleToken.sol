pragma solidity >=0.4.24 <0.6.0;

import "openzeppelin-solidity/contracts/token/ERC20/ERC20.sol";
import "openzeppelin-solidity/contracts/token/ERC20/ERC20Detailed.sol";

contract SimpleToken is ERC20, ERC20Detailed {
	constructor(string memory _name, string memory _symbol, uint8 _decimals, uint256 _initialSupply) 
		ERC20Detailed(_name, _symbol, _decimals) public {
			_mint(msg.sender, _initialSupply.mul(10**uint256(_decimals)));
	}
}
