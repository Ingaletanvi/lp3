//practical 3: Write a smart contract on a test network, for Bank account of a customer for following operations: Deposit money, Withdraw Money, Show balance

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract BankAccount {
    uint private balance = 3500; // Initial balance

    // Deposit function
    function deposit(uint x) public {
        balance += x; // Update balance
    }

    // Withdraw function
    function withdraw(uint x) public {
        if (balance < x) {
            revert("Insufficient balance"); // Error handling
        }
        balance -= x; // Update balance
    }

    // Show balance function
    function show() public view returns (uint) {
        return balance; // Return current balance
    }
}
