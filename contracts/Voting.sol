//SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract Ballot {

    //variables
    struct vote {
        address voterAddress;
        bool choice;
    }

    struct voter {
        string voterName;
        bool voted;
    }
    
    uint private countResult=0;
    uint public finalResult =0;
    uint public totalVoter=0;
    uint public totalVote=0;

    address public ballotOfficialAddress;
    string public ballotOfficialName;
    string public proposal;

    mapping(uint=>vote) private votes;
    mapping(address => voter) public voterRegister;

    enum State{Created,Voting,Ended}
    State public state;

    //modifiers

    modifier condition(bool _condition){
      require(_condition);
      _;
    }

    modifier onlyOfficial(){
      require(msg.sender== ballotOfficialAddress);
      _;
    }

    modifier inState(State _state){
      require(state==_state);
      _;
    }

    //functions
    constructor(){

    }
    function addVoter() private{

    }

    function startVote() private{

    }
    function doVote() public {

    }

    function endVote() private {

    }

}
