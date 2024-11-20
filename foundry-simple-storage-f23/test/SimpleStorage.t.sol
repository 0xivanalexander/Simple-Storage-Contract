// SPDX-License-Identifier:MIT
pragma solidity ^0.8.20;

import {Test} from "forge-std/Test.sol";
import {SimpleStorage} from "src/SimpleStorage.sol";
import {DeploySimpleStorage} from "script/DeploySimpleStorage.s.sol";

contract SimpleStoragTest is Test {
    SimpleStorage simpleStorage;
    DeploySimpleStorage deployer;

    function setUp() public {
        deployer = new DeploySimpleStorage();
        simpleStorage = deployer.run();
    }

    function testFunctionStore() public {
        simpleStorage.store(10);
        uint256 result = simpleStorage.retrieve();
        assertEq(result, 10);
    }

    function testAddPerson() public {
        simpleStorage.addPerson("Alice", 10);
        simpleStorage.addPerson("Bob", 20);
        simpleStorage.addPerson("Charlie", 30);

        (uint256 favoriteNumber,) = simpleStorage.listOfPeople(0);
        (uint256 favoriteNumber2,) = simpleStorage.listOfPeople(1);
        (uint256 favoriteNumber3,) = simpleStorage.listOfPeople(2);
        assertEq(favoriteNumber, 10);
        assertEq(favoriteNumber2, 20);
        assertEq(favoriteNumber3, 30);
    }
}
