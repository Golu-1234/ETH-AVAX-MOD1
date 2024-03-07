# Error Handling In Solidity

This smart contract provides functions to perform error handling using numbers. It demonstrates the usage of `require()`, `assert()`, and `revert()` statements in Solidity.

## Description
This program is a simple contract written in Solidity, a programming language used for developing smart contracts on the Ethereum blockchain. The contract has a three functions which we are used for performing the require(),revert() and assert() function to handles the error in solidity

## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., ErrorHandling.sol). Copy and paste the following code into the file:

```javascript
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ErrorHandlingContract {
    uint256 public num;

    function requireExample(uint256 _num) public {
        require(_num > 0, "Number must be greater than 0");
        
        num = _num;
    }

    function assertExample(uint256 _num) public {
        assert(_num != 0);
        
        num = _num;
    }

    function revertExample(uint256 _num) public {
        if (_num == 0) {
            revert("Number cannot be 0");
        }
        
        num = _num;
    }
}

```

## Requirements

- Solidity version: 0.8.0 or higher

## Functions

### `function requireExample(uint256 _num) `

This function demonstrates the use of `require()` function between the two numbers provided as arguments. The requireExample function is a public function function. It takes an unsigned integer parameter num and performs an require to validate that the number is greater than zero. If it fails, it will terminate the execution and show te second parameter.

### ` function revertExample(uint256 _num)`

this Function takes an unsigned integer parameters, _num and performs a operation. Before executing , it checks the condition. If this condition is true, it reverts the transaction.

### `function assertExample(uint256 _num) `

It takes an unsigned integer parameter a and performs operations. Before executingit, it checks . If this condition fails, it will terminates the execution.

## Usage

1. Compile the smart contract using a Solidity compiler of version 0.8.0 or higher.
2. Deploy the compiled contract on a compatible Ethereum network.
3. Call the desired function .
4. Handle the exceptions as necessary based on the function used:
   

## License

This smart contract is licensed under the MIT License.
