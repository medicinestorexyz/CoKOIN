// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";

contract Cocaine is ERC20Burnable {
    address payable public owner;

    constructor(
        uint256 liquidity
    ) ERC20("CoKOIN", "COKE") {
        owner = payable(msg.sender);
        _mint(owner, liquidity * (10 ** decimals()));
    }
}
