// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "src/PolygonContract.sol";

contract PolygonContractTest is Test {
    PolygonContract public polygonContract;

    function setUp() public {
        polygonContract = new PolygonContract(address(this));
    }

    function testsendMessageToRoot() public {
        bytes memory message = "Lolmessage";
        polygonContract.sendMessageToRoot(message);
    }
}
