// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.10;

contract SolidityStudy {
    string name = "SolidityStudy";
    constructor(){
    }

    function nullFunc(string memory _name) public returns(string memory){
        name = _name;
        return name;
    }

    function viewFunc() public view returns(string memory) {
        return name;
    }

    function pureFunc(string memory _name) public pure returns(string memory) {
        // name = _name; error
        return _name;
    }
}
