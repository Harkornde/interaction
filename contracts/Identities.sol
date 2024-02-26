// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.9;
import "./Identity.sol";


contract Identities{
    address private owner;

    constructor(){
        owner = msg.sender;
    }

    mapping (address => Identity[]) private contacts;


    function createPerson(string memory name, uint age) external {
        contacts[msg.sender].push(new Identity(name, age));
    }

    function updateName(uint index, string memory name) external{
        Identity person = contacts[msg.sender][index];
        person.updatePersonName(name);
    }

    function updateAge(uint8 age, uint index) external{
        Identity person = contacts[msg.sender][index];
        person.updatePersonAge(age);
    }
}