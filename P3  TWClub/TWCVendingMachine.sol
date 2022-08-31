/*
TWC  Vending Machine 
    Cannabis Dispenser
---------------------
To automate the creation of a Vending Maching (VM) in the TWC Club to dispense cannablis to club members that have 
been check criters to allow to dispense.  This will reguate who is allow to legal dispense will allow profits for
the club.  This is a simplistic prototype for the outline of staring the business .  Plans are evanual to expand 
the vending machine to offer other products and functions.  

Solidity Contract
SPDX-License-Identifer: MIT (Open Source)

The Starting file provided for this challenge contains a `pragma` for solidity version `0.8.11`.

This coding will do the following:

1. Define Contract
2. Define-State Varibles: owner & balance
3. Function to Purchase: able to purchase, to restock vending machine & get balance in VM
4. Constructor: set ownder, set balance of VM to start

Using Remix--MegaMask -- Ganache
*/

/ SPDX-License-Identifer: MIT

pragma solidity ^0.8.11;

contract CannabisDispenser{
    address public owner;
    mapping (address => uint) public cannabisBalances;
    
    constructor () {
        owner = msg.sender;
        cannabisBalances[address(this)] = 200;
    }

    function getCannabisDispenserBalance() public view returns (uint) {
        return cannabisBalances[address(this)];
    }

    function restock(uint amount) public {
        require(msg.sender == owner, "Only owner will be able to restock vending machine");
        cannabisBalances[address(this)] += amount;
    } 

    function purchase(uint amount) public payable {
        require(msg.value >= amount * 5 ether, "You have to pay 5 ether per purchase");
        require(cannabisBalances[address(this)] >= amount, "Not enough stock to fill purchase request");
        cannabisBalances[address(this)] = amount;
        cannabisBalances[msg.sender] += amount;        
    }


}