// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract PdayToken is ERC20, ERC20Burnable, ERC20Permit, Ownable {
    constructor() ERC20("Pday Token", "PDAY") ERC20Permit("Pday Token") {
        _mint(msg.sender, 100000000 * 10 ** decimals());
    }
}
