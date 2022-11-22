pragma solidity ^0.8.6;
// SPDX-License-Identifier: UNLICENSED

contract Bank{
    uint Balance;

    function deposit(uint amt) public returns(uint){
        Balance+=amt;
        return 1;
    }

    function withdraw(uint amt) public returns(uint){
        if(amt>Balance){
            return 0;
        }
        Balance-=amt;
        return 1;
    }

    function show() view public returns(uint){
        return Balance;        
    }
    
}


