# Simple-Storage-Contract

Simple Storage Project

Overview

The Simple Storage Project is a smart contract-based application written in Solidity. It provides basic functionality to store and retrieve a favorite number and maintain a list of people with their associated favorite numbers. The project includes deployment and testing scripts to ensure the contract operates as expected.

Features

Store and Retrieve Favorite Numbers
Store a number using the store function.
Retrieve the stored number using the retrieve function.
Add and Manage People
Add people with their names and favorite numbers using the addPerson function.
Maintain a dynamic list of people and map their names to their favorite numbers.
Comprehensive Testing
Includes unit tests to validate the store and addPerson functionalities.
Contract Details

SimpleStorage.sol
The core smart contract with the following features:

State Variables:
myFavoriteNumber: Stores a single number.
listOfPeople: Dynamic array to store Person structs.
nameToFavoriteNumber: A mapping from names to favorite numbers.
Structs:
Person: Contains name and favoriteNumber.
Functions:
store(uint256 _favoriteNumber): Stores a number in the contract.
retrieve() public view returns (uint256): Retrieves the stored number.
addPerson(string memory _name, uint256 _favoriteNumber): Adds a person to the list.
Deployment

Script: DeploySimpleStorage.s.sol
This script is responsible for deploying the SimpleStorage contract using Foundry's scripting tools.

Key Function:
run(): Deploys the SimpleStorage contract and returns the deployed instance.
Testing

Test File: SimpleStorageTest.t.sol
Tests are implemented using the Foundry testing framework to ensure correctness.

Setup:
Deploys a new instance of the SimpleStorage contract before each test.
Test Cases:
testFunctionStore(): Tests storing and retrieving a number.
testAddPerson(): Tests adding multiple people and validates their data.
Tools and Requirements

Solidity: Version 0.8.27
Foundry: For deployment and testing
Remix: Optional for interactive development
