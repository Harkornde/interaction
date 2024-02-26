// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

contract Identity {
    string private personName;
    uint private personAge;

    constructor(string memory name, uint age) {
        personName = name;
        personAge = age;
    }
    
    function updatePersonName(string memory newName) external {
        personName = newName;
    }

    function updatePersonAge(uint newAge) external {
        personAge = newAge;
    }
}