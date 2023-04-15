const ConvertLib = artifacts.require("ConvertLib");
const AirlineCoin = artifacts.require("AirlineCoin");
const AirlineRewardCoin = artifacts.require("AirlineRewardCoin");
const StakingAirline = artifacts.require("StakingAirline");
const NativeTokenWrapper = artifacts.require("NativeTokenWrapper");

module.exports = function (deployer, networks, accounts) {
  deployer.deploy(ConvertLib);
  deployer.link(ConvertLib, AirlineCoin);
  deployer.deploy(AirlineCoin);
  deployer.deploy(AirlineRewardCoin, "AirlineReward", "SIVAO");
  deployer.deploy(NativeTokenWrapper, "Wrapped ETH", "WETH");
  deployer.deploy(
    StakingAirline,
    1,
    1,
    20,
    AirlineCoin,
    AirlineRewardCoin,
    NativeTokenWrapper.deployed().address
  );
};
