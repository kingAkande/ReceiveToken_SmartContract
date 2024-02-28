// SPDX-License-Identifier: MIT


pragma solidity^0.8.9;



// write a smart contract that uses view, pure, and payable functions. 
// Ensure that the functions are accessible within the contract and derived contracts as well.


contract Token_reciever{

     uint amountAvailable;
    uint amountNeeded;

    address payable public Owner;

    constructor(){

        Owner = payable(msg.sender);
    }


function tokenDeposit()external payable {}



function tokenBalance()external view returns(uint){

    return address(this).balance;
}


  

function AvailabeAmount(uint _available, uint _need )external pure returns (bool){

        require( _available >_need , "request can't be granted");

        return true;

}


}






