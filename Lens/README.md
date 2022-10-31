# NFT Lens

This project mainly consists of 2 contracts:
  1. ERC1155URIStorage - an openzeppelin standard which is an extension of ERC1155.
  2. NFTLens - contract inherited from ERC1155URIStorage which is a wrapper contract consisting mint functionality.

###Overview###
This project uses ERC1155URIStorage to store the metadata of individual NFTs.
External link to each NFT Metadata is stored onchain.
This contract allows any user to mint an NFT with multiple balances. 
The primary use case of this contract is a user clicking/recording a picture/video and minting an NFT out of it.


###Functionalities###
* Mint - Function in NFTLens which internally calls `_mint()` of parent ERC1155 contract to mint a new token ID. Also calls `_setURI()` in ERC1155URIStorage to store the external link to the metadata of a particular tokenID. Once URI is set for a tokenID it cannot be changed, hence maintaining immutability of the NFT token.
  * _to(address) - to which NFT is to be minted.
  * _amount(uint256) - amount to be minted.
  * _tokenURI(string) - external link to metadata of token.
  * _data(bytes) - extra bytes data for smart contract call.

* URI - Function in ERC1155URIStorage which gives the tokenURI stored for a tokenID. TokenURIs are stored in a mapping of tokenID to tokenURI in this contract.
  * tokenId(uint256) - tokenId of which tokenURI is needed.

Try running some of the following tasks:

```shell
npx hardhat accounts
npx hardhat compile
npx hardhat clean
npx hardhat node
npx hardhat help
```
