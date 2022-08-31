/*
TWC Club Wallet
---------------------
To create an ETH Wallet as a prototype as for the planning of opeing the business.  In the future add other functions
as the club opens for busniess.  This will be used for purchases in the clue as food, drinks etc. 

Using a solidity smart contract 

The Starting file provided for this challenge contains a  for solidity version `0.8.11`.

Varibles: owner (made function so only owner can withdraw)

Functions:  
1. getBalance()
2. receive() - allows to receive ether/funds
3. withdraw() - owner can withdraw ether


Using Remix

*/

// SPDX-License-Identifer: MIT
pragma solidity ^0.8.11;

//Define contract
contract TWCWallet {
    address payable public owner;

    constructor() {
        owner = payable(msg.sender);    
    }

    receive() external payable {}

    function withdraw(uint _amount) external {
        require(msg.sender == owner, "only owner can use this method.");
        payable(msg.sender).transfer(_amount);

    }

    function getBalance() external view returns (uint) {
        return address(this).balance;       

    }

}