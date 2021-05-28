// contracts/MVP.sol
//this contract inspired from OpenZeppelin docs and the chainlink blockathon
pragma solidity ^0.6.0;

contract MVP {
    string private words;

    // Emitted when the stored value changes
    event WordsChanged(string newWords);

    // Stores a new string of words in the contract
    function store(string newWords) public {
        words = newWords;
        emit WordsChanged(newWords);
    }

    // Reads the last stored value
    function retrieve() public view returns (string) {
        return words;
    }
}
