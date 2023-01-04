// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {FxBaseChildTunnel} from "fx-portal/tunnel/FxBaseChildTunnel.sol";

contract PolygonContract is FxBaseChildTunnel {
    uint256 public latestStateId;
    address public latestRootMessageSender;
    bytes public latestData;

    constructor(address _fxChild) FxBaseChildTunnel(_fxChild) {}

    function _processMessageFromRoot(uint256 stateId, address sender, bytes memory data)
        internal
        override
        validateSender(sender)
    {
        latestStateId = stateId;
        latestRootMessageSender = sender;
        latestData = data;
    }

    function sendMessageToRoot(bytes memory message) public {
        _sendMessageToRoot(message);
    }
}
