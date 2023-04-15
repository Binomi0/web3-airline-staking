// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

// These files are dynamically created at test time
import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/AirlineRewardCoin.sol";

contract TestAirlineRewardCoin {
    function testInitialBalanceUsingDeployedContract() public {
        AirlineRewardCoin meta = AirlineRewardCoin(
            DeployedAddresses.AirlineRewardCoin()
        );

        uint expected = 10000;

        Assert.equal(
            meta.balanceOf(tx.origin),
            expected,
            "Owner should have 10000 AirlineRewardCoin initially"
        );
    }

    function testInitialBalanceWithNewAirlineCoin() public {
        AirlineRewardCoin meta = new AirlineRewardCoin(
            "AirlineReward",
            "SIVAO"
        );

        uint expected = 10000;

        Assert.equal(
            meta.balanceOf(tx.origin),
            expected,
            "Owner should have 10000 AirlineRewardCoin initially"
        );
    }
}
