//SPDX-License-Identifier:MIT
pragma solidity ^0.8.19;

import {Script} from 'forge-std/Script.sol';
import {MyCollectibles} from '../src/MyCollectibles.sol';

contract DeployMyNFT is Script{
     //rund 
     function run()public  returns(MyCollectibles) {
        vm.startBroadcast();
        MyCollectibles mynft = new MyCollectibles();
        vm.stopBroadcast();
        return mynft;
     }
}