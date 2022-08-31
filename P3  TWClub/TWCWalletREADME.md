## **TWC  Wallet**

![]()![1661740219476](image/TWCWalletREADME/1661740219476.png)

#### **Synoposis:**

To create an ETH Wallet as a prototype as for the planning of opeing the business.  In the future add other functions
as the club opens for busniess.  This will be used for purchases in the club as food, drinks etc.

Using a solidity smart contract

The Starting file provided for this challenge contains a pragma for solidity version 0.8.11.

**Varibles:** owner (made function so only owner can withdraw)

**Functions:**

1. getBalance()
2. receive() -allows to receive ether
3. withdraw() - owner can withdraw ether

- allows to receive ether/funds
- allows to receive ether/funds

Using Remix

Coding:

![]()![1661799697027](image/TWCWalletREADME/1661799697027.png)

Coding & Deploy:

![1661799891558](image/TWCWalletREADME/1661799891558.png)

**Sucess deploy contract & checking starting with zero balance:**

![1661800157456](image/TWCWalletREADME/1661800157456.png)

# Testing

Low Level interations:

* **Low** **level** **interactions** are used to send funds or calldata or funds & calldata to a contract through the receive () or fallback () function. Examples of **low** **level** functions are call and delegate call.
* In this instance creates a transaction to send ether in to the function.

![1661800375738](image/TWCWalletREADME/1661800375738.png)

Account- Picked account taking ether from.

Valve- charged 20 ether

CallDATA- hit to withdraw from their account

![1661801440536](image/TWCWalletREADME/1661801440536.png)

Worked & getBalance function hit to show took to get balance: (defaulted to Wei)

![1661802421599](image/TWCWalletREADME/1661802421599.png)

Test: Put Owner account to withdraw amout and correctly now show zero balance:

![1661806093827](image/TWCWalletREADME/1661806093827.png)

![1661806254553](image/TWCWalletREADME/1661806254553.png)

Test to withdraw zero balance on correctly failed:

![1661806386742](image/TWCWalletREADME/1661806386742.png)

Testing completed for prototype

![1661806483546](image/TWCWalletREADME/1661806483546.png)

---
