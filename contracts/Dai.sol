pragma solidity ^0.5.0;

import "@OpenZeppelin/contracts/token/ERC20/ERC20Detailed.sol";
import "@OpenZeppelin/contracts/token/ERC20/ERC20.sol";

contract Dai is ERC20, ERC20Detailed {
    constructor() public ERC20Detailed("Dai Stablecoin", "DAI", 18) {}

    function faucet(address recipient, uint256 amount) external {
        _mint(recipient, amount);

    }

}
