# VotingContract

The `VotingContract` is a smart contract that enables users to participate in a voting process. It allows users to cast their votes and keeps track of the total number of votes received. The contract ensures that each user can vote only once and limits the maximum number of votes that can be cast.

## Usage

1. Deploy the `VotingContract` on a compatible Ethereum blockchain network.

2. Interact with the contract using a web3-enabled application or a compatible Ethereum client.

3. Call the `vote()` function to cast a vote. Each vote increments the total vote count by one. However, once the maximum vote limit is reached (100 votes in this example), the voting process is automatically closed.

4. The contract prevents users from voting more than once. If a user attempts to vote multiple times, the transaction will be reverted, and an error message will be provided.

## Smart Contract Details

The `VotingContract` smart contract is implemented in Solidity and utilizes the `require()`, `assert()`, and `revert()` statements to enforce conditions, handle errors, and control the flow of the voting process.

### Contract Functions

- `vote()`: Allows a user to cast their vote. It checks if the voting process is closed and if the user has already voted. If the conditions are met, the user's vote is counted, and the `totalVotes` count is incremented. Once the maximum vote limit is reached, the voting process is closed, and no further votes can be cast.

### Contract Variables

- `totalVotes`: An unsigned integer that represents the total number of votes cast.

- `hasVoted`: A mapping that keeps track of whether a user has already voted. It maps the user's Ethereum address to a boolean value.

- `votingClosed`: A boolean variable that indicates whether the voting process is closed. It is set to `true` when the maximum vote limit is reached.

### Error Handling

The contract uses the `require()` statement to validate conditions such as the availability of voting, prevention of multiple votes, and the maximum vote limit. If any of these conditions are not met, the transaction is reverted with an appropriate error message.

The `assert()` statement is used to check for integer overflow when incrementing the vote count. It ensures that the vote count doesn't exceed the maximum value allowed for the `uint` data type.

The `revert()` statement is employed to close the voting process once the maximum vote limit is reached. It reverts the transaction and provides a custom error message to indicate that the maximum number of votes has been reached.

## License

This project is licensed under the [MIT License](LICENSE).
