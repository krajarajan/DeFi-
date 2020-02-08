pragma solidity ^0.5.0;

import "@OpenZeppelin/contracts/token/ERC20/IERC20.sol";

contract MyDefi {
    IERC20 dai;
    constructor(address daiAddress) public {
        dai = IERC20(daiAddress);
        //store address
    }

    function foo(address recipient, uint256 amount) external {
        //do some stuffs

        dai.transfer(recipient, amount);
    }

}
