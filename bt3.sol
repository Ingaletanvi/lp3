// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract BankAccount {
    mapping(address => uint) private balances; // Each user's balance

    // Deposit function
    function deposit(uint amount) public {
        balances[msg.sender] += amount; // Update sender's balance
    }

    // Withdraw function
    function withdraw(uint amount) public {
        require(balances[msg.sender] >= amount, "Insufficient balance"); // Check if sender has enough balance
        balances[msg.sender] -= amount; // Update sender's balance
    }

    // Show balance function
    function showBalance() public view returns (uint) {
        return balances[msg.sender]; // Return sender's current balance
    }
}
