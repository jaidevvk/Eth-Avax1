//1.SPDX-License-Identifier: MIT
pragma solidity 0.8.18;
contract handlers{
    bool s;
    
    address owner;
    uint public total_supply;

    constructor (){
        s=false;
        total_supply=1000;
    }
    
    function require_example()public  {
        require(total_supply>=500,"You need to pre-mint 500 tokens before you can start the game");
        s=true;
    }
    function revert_example()public pure returns(bool){
        revert("You simply cannot execute this function. It will get reverted back");
        return true;
    }
    function assert_example()public view returns(string memory){
        assert(s==true);
        return "START GAME";
    }
}
