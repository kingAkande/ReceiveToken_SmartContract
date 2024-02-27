// SPDX-License-Identifier: MIT
pragma solidity^0.8.9;


contract OnlyAdmin{
   
   string name;
   uint contact;
   uint housenumber;
   address Admin;



    constructor(){

        Admin = msg.sender;
    }


   modifier TheAdmin {

        require( Admin == msg.sender, "not an admin");

      _;

   }

   function setter(string memory _name, uint _contact,uint _houseNum ) external {

       name = _name;

      contact = _contact;

      housenumber = _houseNum;


   }


   function getter(address)external view TheAdmin returns (uint){

      return contact;

   }

   function Caller(address)external view TheAdmin returns(bool){

         
      return true;


   }

   

}
