// SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.8.0;

import "@thirdweb-dev/contracts/base/ERC1155LazyMint.sol";

contract MyNFT is ERC1155LazyMint {
    mapping(address => uint256) public balances;

    constructor(
        string memory _name,
        string memory _symbol,
        address _royaltyRecipient,
        uint128 _royaltyBps
    ) ERC1155LazyMint(_name, _symbol, _royaltyRecipient, _royaltyBps) {}

    function verifyClaim(
        address _claimer,
        uint256 _tokenId,
        uint256 _quantity
    ) public view virtual override {
        // Your custom claim restriction logic
        require(
            balances[_claimer] != _tokenId,
            "You already own this aircraft."
        );
    }
}
