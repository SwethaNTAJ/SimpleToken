const SimpleToken = artifacts.require("SimpleToken");

module.exports = function(deployer) {
  const _name = 'Simple Token'
  const _symbol = 'STK';
  const _decimals = 8;
  const _amount = 6543210;
  
  deployer.deploy(SimpleToken, _name, _symbol, _decimals, _amount);
};

