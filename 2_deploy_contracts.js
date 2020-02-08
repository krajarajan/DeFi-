var Dai = artifacts.require("Dai");
var MyDefi = artifacts.require("MyDefi");

module.exports = async function(deployer, _network, accounts) {
  deployer.deploy(Dai);
  const dai = await Dai.deployed();
  await deployer.deploy(MyDefi, dai.address);
  const myDeFi = await MyDefi.deployed();
  await dai.faucet(myDeFi.address, 100);
  await myDeFi.foo(accounts[1], 100);

  const balance0 = await dai.balanceOf(myDeFi.address);
  const balance1 = await dai.balanceOf(accounts[1]);
  console.log(balance0.toString());
  console.log(balance1.toString());
};
