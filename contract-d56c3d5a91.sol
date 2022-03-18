// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts@4.5.0/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts@4.5.0/access/Ownable.sol";

contract SHEGE is ERC20, Ownable {
    uint256 tokenRate = 1000 * 10 ** 18;
    constructor() ERC20("SHEGE", "SHG") {
        _mint(msg.sender, 1000000 * 10 ** 18);
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

     function buyToken(address receiver, uint256 amount) public payable returns(string memory success){
        _mint(receiver, amount*tokenRate);
     
        return "success";
    }
}
