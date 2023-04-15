// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

// These files are dynamically created at test time
import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/AirlineCoin.sol";

contract TestAirlineCoin {
    function testInitialBalanceUsingDeployedContract() public {
        AirlineCoin meta = AirlineCoin(DeployedAddresses.AirlineCoin());

        uint expected = 10000;

        Assert.equal(
            meta.getBalance(tx.origin),
            expected,
            "Owner should have 10000 AirlineCoin initially"
        );
    }

    function testInitialBalanceWithNewAirlineCoin() public {
        AirlineCoin meta = new AirlineCoin();

        uint expected = 10000;

        Assert.equal(
            meta.getBalance(tx.origin),
            expected,
            "Owner should have 10000 AirlineCoin initially"
        );
    }
}
