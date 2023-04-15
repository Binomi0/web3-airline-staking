// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "@thirdweb-dev/contracts/base/Staking20Base.sol";

contract StakingAirline is Staking20Base {
    constructor(
        uint256 _timeUnit,
        uint256 _rewardRatioNumerator,
        uint256 _rewardRatioDenominator,
        address _stakingToken,
        address _rewardToken,
        address _nativeTokenWrapper
    )
        Staking20Base(
            _timeUnit,
            _rewardRatioNumerator,
            _rewardRatioDenominator,
            _stakingToken,
            _rewardToken,
            _nativeTokenWrapper
        )
    {}

    function _mintRewards(
        address _staker,
        uint256 _rewards
    ) internal virtual override {
        IERC20(
            address(
                bytes20(bytes("0xC02aaA39b223FE8D0A0e5C4F27eAD9083C756Cc2"))
            )
        ).transfer(_staker, _rewards);
    }
}
