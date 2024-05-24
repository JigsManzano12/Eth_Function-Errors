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
    //Gerard Jose
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
    //Gerard Jose
    // Function to demonstrate revert statement
    function revertExample(uint256 _value) public pure returns (uint256) {
        // Revert if the value is zero
        if (_value == 0) {
            revert("Value cannot be zero");
        }
        return _value;
    }
} 
    //Gerard Jose
