const ConvertLib = artifacts.require("ConvertLib");
const AirlineCoin = artifacts.require("AirlineCoin");
const AirlineRewardCoin = artifacts.require("AirlineRewardCoin");
const NativeTokenWrapper = artifacts.require("NativeTokenWrapper");
const StakingAirline = artifacts.require("StakingAirline");

module.exports = async function (deployer, networks, accounts) {
  await deployer.deploy(ConvertLib);
  deployer.link(ConvertLib, AirlineCoin);

  await deployer.deploy(AirlineCoin, "AirlineCoin", "IVAO");
  const airlineCoin = await AirlineCoin.deployed();

  await deployer.deploy(AirlineRewardCoin, "AirlineReward", "SIVAO");
  const airlineRewardCoin = await AirlineRewardCoin.deployed();

  await deployer.deploy(NativeTokenWrapper, "Wrapped ETH", "WETH");
  const nativeTokenWrapper = await NativeTokenWrapper.deployed();

  await deployer.deploy(
    StakingAirline,
    1,
    1,
    20,
    airlineCoin.address,
    airlineRewardCoin.address,
    nativeTokenWrapper.address
  );
  const stakingAirline = await StakingAirline.deployed();

  stakingAirline.stake(100);
};
