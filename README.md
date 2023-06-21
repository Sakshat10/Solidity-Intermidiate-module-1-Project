# AssertionContract

This is a smart contract written in Solidity that demonstrates the usage of `require()`, `assert()`, and `revert()` statements for condition validation and exception handling.

## Contract Overview

The `AssertionContract` is a simple contract that allows updating a public variable `value` using the `setValue` function. The contract includes examples of using the three important statements:

- `require()`: It is used to validate a condition and revert the transaction if the condition evaluates to `false`.
- `assert()`: It is used to validate a condition during runtime. If the condition evaluates to `false`, it triggers an exception and reverts any changes made.
- `revert()`: It is used to immediately revert the transaction with a specified error message.

## Usage

The contract has one main function:

### `setValue(uint256 _newValue)`

This function updates the `value` variable with the provided `_newValue` parameter, applying condition checks using `require()`, `assert()`, and `revert()` statements.

#### Parameters

- `_newValue`: The new value to be assigned to the `value` variable.

#### Condition Checks

1. `require(_newValue != 0, "Value cannot be zero")`: Verifies that the new value is not zero. If the condition fails, the transaction is reverted with the provided error message.
2. `assert(_newValue > value)`: Validates that the new value is greater than the current value. If the condition fails, it triggers an exception and reverts any changes made.
3. `if (_newValue == 999) { revert("Invalid value"); }`: Checks if the new value is equal to 999. If it is, the transaction is immediately reverted with the specified error message.

#### Example

To use this contract, follow these steps:

1. Deploy the contract on a compatible Ethereum development environment.
2. Call the `setValue` function, providing a non-zero value greater than the current value.

# License
This code is released under the MIT License.



Example transaction using web3.js:

```javascript
const contractInstance = new web3.eth.Contract(AssertionContract.abi, contractAddress);
const newValue = 100;
contractInstance.methods.setValue(newValue).send({ from: senderAddress })
  .on('receipt', (receipt) => {
    console.log("Transaction successful!");
  })
  .on('error', (error) => {
    console.error("Transaction failed:", error);
  });
