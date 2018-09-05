pragma solidity ^0.4.2;

contract Election {

	// Model a Candidate
	struct Candidate {
		uint id;
		string name;
		uint voteCount;
	}

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


		
}