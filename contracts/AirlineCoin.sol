// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "@thirdweb-dev/contracts/base/ERC20Base.sol";
import "./ConvertLib.sol";

contract AirlineCoin is ERC20Base {
    constructor(
        string memory _name,
        string memory _symbol
    ) ERC20Base(_name, _symbol) {
        mintTo(tx.origin, 10000_000_000_000_000_000_000);
    }
}
