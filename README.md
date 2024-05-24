# Functions & Errors

A simple Token using solidity

## Description

The AgeContract is a Solidity smart contract designed to manage user ages on the Ethereum blockchain. It provides functionalities for setting and retrieving ages, along with demonstrating the usage of require(), assert(), and revert() statements to ensure data integrity and provide informative error handling.

## Getting Started

To deploy and interact with the AgeContract smart contract, you can use Remix, an online Solidity IDE. Follow these steps:

Go to the Remix website: Remix IDE.
Create a new file and save it with a .sol extension.
Copy and paste the AgeContract smart contract code into the file.
Compile the contract by selecting the appropriate Solidity compiler version (e.g., 0.8.18).
Deploy the contract and interact with its functions using Remix's interface.

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., Func_Errors.sol). Copy and paste the following code into the file:

```javascript
// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract AgeContract {
    mapping(address => uint256) public ages;

    // Function to set age
    function setAge(uint256 _age) public {
        // Require age to be greater than 0
        require(_age > 0, "Age must be greater than 0");
        
        // Require age to be less than or equal to 150
        require(_age <= 150, "Age must be less than or equal to 150");

        // Set age for the sender
        ages[msg.sender] = _age;
    }

    // Function to get age
    function getAge(address _user) public view returns (uint256) {
        return ages[_user];
    }

    // Function to demonstrate assert statement
    function assertExample(uint256 _value) public pure returns (uint256) {
        // Assert that the value is not zero
        assert(_value != 0);
        return _value;
    }

    // Function to demonstrate revert statement
    function revertExample(uint256 _value) public pure returns (uint256) {
        // Revert if the value is zero
        if (_value == 0) {
            revert("Value cannot be zero");
        }
        return _value;
    }
}


```

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.18" (or another compatible version), and then click on the "Compile myToken.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "myToken" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you can interact with it in various ways. Firstly, you can query the token balances of specific addresses using the balances function. Secondly, to verify the token abbreviation, you can access the tokenAbbrv variable, which holds the string "JGI". Thirdly, to confirm the token's name, you can retrieve the value stored in the tokenName variable, which is set to "Jiggie". Additionally, you can inquire about the total supply of tokens by accessing the totalSupply variable. Moreover, you have the option to perform actions such as minting and burning tokens. Minting allows you to add tokens to a designated address by calling the mint function with the address and the desired number of tokens as parameters. Conversely, the burn function enables you to reduce or eliminate tokens from an address by specifying the address and the number of tokens to be destroyed. These functionalities collectively offer a comprehensive set of options for managing and interacting with the MyToken contract on the Ethereum blockchain.

## Authors

Gerard Manzano
[@Chill Code](https://www.youtube.com/channel/UCqnpVDK-Ym41W1WDvBMmN6w)


## License

This project is licensed under the MIT License - see the LICENSE.md file for details
