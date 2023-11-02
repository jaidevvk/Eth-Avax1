# Eth+Avax First module

In my first module, I learned how to implement the error handlers and use it in a smart contract.

## Description

In this module project, I have deployed a contract which is like a game , the boolean s has to be set as true before we can start the game . Therefore to make the boolean s as true we need to make sure we have atleast 500 tokens pre-minted in our total supply. Only then , it returns a string that we can start the game. The revert function does not execute any statements but simply prints the error message that we cannot call that function.

## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., AVAX1.sol). Copy and paste the following code into the file:

```javascript
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

```

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.18" (or another compatible version), and then click on the "Compile AVAX1.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "module1" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you can interact with it . The error statements gets printed in the terminal in Remix but if the condition is satisfied then it just prints the value under that function and shows a right green tick in terminal that the transaction is executed.
## Authors

Jaidev K (@jaidevvk12@gmail.com)

## License

This project is licensed under the [MIT] License - see the LICENSE.md file for details
