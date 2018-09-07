pragma solidity ^0.4.2;

contract Election {

	// Model a Candidate
	struct Candidate {
		uint id;
		string name;
		uint voteCount;
	}

	// store accounts that have voted
	mapping(address => bool) public voters;
	// Store Candidates
	// Fetch Candidate
	mapping(uint => Candidate) public candidates;
	// Store Candidates count 
	uint public candidatesCount;

	//string public candidate; // candidate ia a state variable. By default it has a getter() function.
	// Constructor
	//function Election() public {
	function Election() public {
		addCandidate("Candidate 1");
		addCandidate("Candidate 2");
	}

	function addCandidate(string _name) private {
		candidatesCount ++;
		candidates[candidatesCount] = Candidate(candidatesCount, _name, 0); 	
	}

	function vote(uint _candidateId) public {
		// require that they haven't voted before
		require(!voters[msg.sender]);

		// require a valid candidate
		require(_candidateId > 0 && _candidateId <= candidatesCount);


		// record that voter(account) has voted
		voters[msg.sender] = true;

		// update candidate vote count
		candidates[_candidateId].voteCount ++;
	}


		
}