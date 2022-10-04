//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;
import "@openzeppelin/contracts/token/ERC1155/extensions/ERC1155URIStorage.sol";
contract NFTLens is ERC1155URIStorage{
    uint256 tokenId;
    event mintSuccessful(address to, uint256 tokenId, uint256 amount, bytes data, string tokenURI);
    constructor() ERC1155(""){
        tokenId = 1;
    }
    function mint(address _to, uint256 _amount, 
    string memory _tokenURI, bytes memory _data) external {
        _mint(_to, tokenId, _amount, _data);
        _setURI(tokenId, _tokenURI);
        emit mintSuccessful(_to, tokenId, _amount, _data, _tokenURI);
        unchecked{
            tokenId += 1;
        }
    }
}