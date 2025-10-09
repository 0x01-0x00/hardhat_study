// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.10;

contract FunctionStudy {

    uint256 MSG_SENDER_VALUE_MIN = 1*10**18-1;

    mapping(address  => uint256) public senderValue;
    string name = "SolidityStudy";
    constructor(){
    }

    // payable
    function payableFunc() public payable{
        require(msg.value > MSG_SENDER_VALUE_MIN, "msg.value is too small");
        senderValue[msg.sender] = msg.value;
    }

    // null
    function nullFunc(string memory _name) public returns(string memory){
        name = _name;
        return name;
    }

    // view
    function viewFunc() public view returns(string memory) {
        return name;
    }

    // pure
    function pureFunc(string memory _name) public pure returns(string memory) {
        // name = _name; error
        return _name;
    }
}
