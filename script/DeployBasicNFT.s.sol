//SPDX-License-Identifier:MIT
pragma solidity ^0.8.19;

import {Script, console2} from "forge-std/Script.sol";
import {BasicNFT} from "../src/BasicNFT.sol";

contract DeployBasicNFT is Script {
    //rund
    function run() public returns (BasicNFT) {
        vm.startBroadcast();
        BasicNFT mynft = new BasicNFT();
        vm.stopBroadcast();
        console2.log(address(mynft));
        return mynft;
    }
}
