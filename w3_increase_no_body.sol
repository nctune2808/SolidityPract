// SPDX-License-Identifier: MIT
/*
    Create function increase X,
    Function takes a parameter as uint from input
    And increase X by that input parameter

    Required X only be increased
    The function IncreaseX has empty body.
*/
pragma solidity ^0.8.3;
    contract IncreaseWithoutBody {

        uint public x = 0;

        // modifier isPositive(uint input) {
        //     require(input >= 0, "Should be positive input");
        //     _;
        // }

        // modifier increaseXby(uint input){
            
        //     x = x+input;
        //     _;
        // }

        modifier execute(uint input) {
            require(input >= 0, "Should be positive input");
            _;
            x = x+input;
        }

        function increaseX(uint input) public execute(input) {}
        // function increaseX(uint input) public isPositive(input) increaseXby(input){}
    }