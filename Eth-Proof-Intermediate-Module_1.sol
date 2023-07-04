// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract VotingContract {
    uint public totalVotes;
    mapping(address => bool) public hasVoted;
    bool public votingClosed;

    constructor() {
        totalVotes = 0;
        votingClosed = false;
    }

    function vote() external {
        require(!votingClosed, "Voting is closed.");
        require(!hasVoted[msg.sender], "You have already voted.");

        uint previousTotalVotes = totalVotes;
        totalVotes++;

        assert(totalVotes > previousTotalVotes);

        // Additional voting logic can be implemented here...

        if (totalVotes >= 4) {
            votingClosed = true;
            revert("Maximum number of votes reached. Voting closed.");
        }

        hasVoted[msg.sender] = true;

        // Continue with the rest of the voting process...
    }
}
