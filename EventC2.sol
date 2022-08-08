// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.15;

contract EventC2 {

    address owner;

    event _ServerData(bool f, bool enc, int seq, string agentID, string data);
    event _ClientData(bool f, bool enc, int seq, string agentID, string data);

    constructor() {
        owner = msg.sender;
    }
    
    function AddClientData(string memory agentID, string memory d, int id, bool f, bool enc) public {
        emit _ClientData(f, enc, id, agentID, d);
    }

    function AddServerData(string memory agentID, string memory d, int id, bool f, bool enc) public {
        emit _ServerData(f, enc, id, agentID, d);
    }
}
