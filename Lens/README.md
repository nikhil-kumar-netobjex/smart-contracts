# NFT Lens

This project mainly consists of 2 contracts:
  1. ERC1155URIStorage - an openzeppelin standard which is an extension of ERC1155.
  2. NFTLens - contract inherited from ERC1155URIStorage which is a wrapper contract consisting mint functionality.

This project is uses ERC1155URIStorage to store the metadata of individual NFTs.
External link to each NFT is stored onchain. 
This contract allows any user to mint an NFT with multiple balances. 
This involves a use case where user needs to click/record a picture/video  and mint an NFT out of it.

Try running some of the following tasks:

```shell
npx hardhat accounts
npx hardhat compile
npx hardhat clean
npx hardhat node
npx hardhat help
```
