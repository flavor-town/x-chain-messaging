// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Script.sol";
import {PolygonContract} from "src/PolygonContract.sol";

contract Deploy is Script {
    // ChainID --> fxChild address
    mapping(uint24 => address) private fxChild;
    mapping(uint24 => address) private fxRoot;
    mapping(uint24 => address) private checkpointManager;

    uint8 private constant MAINNET_POS = 137;
    uint8 private constant MAINNET_ETH = 1;
    uint8 private constant TESTNET_GOERLI = 5;
    uint24 private constant TESTNET_MUMBAI = 80001;

    function setUp() public {
        fxChild[MAINNET_POS] = 0x8397259c983751DAf40400790063935a11afa28a; // PoS Mainnet
        fxChild[TESTNET_MUMBAI] = 0xCf73231F28B7331BBe3124B907840A94851f9f11; //Mumbai

        fxRoot[MAINNET_ETH] = 0xfe5e5D361b2ad62c541bAb87C45a0B9B018389a2;
        checkpointManager[MAINNET_ETH] = 0x86E4Dc95c7FBdBf52e33D563BbDB00823894C287;
        fxRoot[TESTNET_GOERLI] = 0x3d1d3E34f7fB6D26245E6640E1c50710eFFf15bA;
        checkpointManager[TESTNET_GOERLI] = 0x2890bA17EfE978480615e330ecB65333b880928e;
    }

    function run() public {
        vm.broadcast();
        // deploy child w/ fxChild

        // deployRoot w/ checkPointmanager & fxRoot;

        // call rootContract.setFxChildTunnel(address of polygon contract)

        // call childContract.setFxRootTunnel(address of rootContract)
    }
}
