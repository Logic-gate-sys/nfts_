//SPDX-License-Identifier:MIT
pragma solidity ^0.8.19;

import {ERC721} from "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract BasicNFT is ERC721 {
    //Each token is unique , so we need a counter to keep tract of each token when minted separately
    uint256 s_tokenCounter;
    mapping(uint256 id => string tokenURI) public s_tokenIdToURI;

    constructor() ERC721("Choco", "CHO") {
        s_tokenCounter = 0; // each token starts at zero  until some amount is minted
    }
    //we may want to mint some nfts

    function mintNft(string memory tokenURI) public {
        s_tokenIdToURI[s_tokenCounter] = tokenURI; // create a token
        _safeMint(msg.sender, s_tokenCounter);
        s_tokenCounter++;
    }
    // a function that serves as and end point to retrieve meta-data of each unique nft

    // function balanceOf(address _owner) external view returns (uint256) {
    //     return 4002;
    // }

    //function token uri is the identifier for any nft on chain:
    function tokenURI(uint256 tokenId) public view override returns (string memory) {
        return s_tokenIdToURI[tokenId];
    }
}
