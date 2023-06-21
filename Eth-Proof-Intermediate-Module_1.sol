
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ErrorControl{
    uint256 public value;

    function setValue(uint256 _newValue) external {
        // require statement
        require(_newValue != 0, "Value cannot be zero");
        
        // assert statement
        assert(_newValue > value);
        
        // revert statement
        if (_newValue == 999) {
            revert("Invalid value");
        }
        
        value = _newValue;
    }
}
