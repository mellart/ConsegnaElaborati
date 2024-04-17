// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.0.0
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract GameAssets is ERC1155, Ownable {

    string public name = "My Game Assets";

    uint256 public constant Mario_Bros = 1;
    uint256 public constant Sonic_The_Hedgehog = 2;
    uint256 public constant Xbox_Controller = 3;

    constructor(address initialOwner) ERC1155("https://salmon-total-piranha-783.mypinata.cloud/ipfs/QmWu9ZNHQsfrWqjCWxg6gvN15DwW99fjmN23URvu2a4Gjd/{id}.json") Ownable(initialOwner) {
        // funzionalità di minting automatico
        mint(msg.sender, Mario_Bros, 1, "");
        mint(msg.sender, Sonic_The_Hedgehog, 1, "");
        mint(msg.sender, Xbox_Controller, 100, "");
    }
    
    function setURI(string memory newuri) public onlyOwner {
        _setURI(newuri);
    }

    function mint(address account, uint256 id, uint256 amount, bytes memory data)
        public
        onlyOwner
    {
        _mint(account, id, amount, data);
    }

    function mintBatch(address to, uint256[] memory ids, uint256[] memory amounts, bytes memory data)
        public
        onlyOwner
    {
        _mintBatch(to, ids, amounts, data);
    }
}