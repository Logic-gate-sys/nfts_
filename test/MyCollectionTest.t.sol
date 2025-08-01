//SPDX-License-Identifier:MIT
pragma solidity ^0.8.19;

import {DeployBasicNFT} from "../script/DeployBasicNFT.s.sol";
import {BasicNFT} from "../src/BasicNFT.sol";
import {Test} from "forge-std/Test.sol";

contract MyCollectionTest is Test {
    DeployBasicNFT deployNFT;
    BasicNFT mycol;
    address private USER = makeAddr("user");

    function setUp() public {
        deployNFT = new DeployBasicNFT();
        mycol = deployNFT.run();
    }

    function testNameIsCorrect() public {
        string memory actualName = mycol.name();
        string memory expectedName = "Choco";
        //strings are complex hence should not be compared directly
        vm.assertEq(keccak256(abi.encodePacked(actualName)), keccak256(abi.encodePacked(expectedName)));
    }
}
