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
