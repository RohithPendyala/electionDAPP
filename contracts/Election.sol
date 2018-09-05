pragma solidity ^0.4.23;

contract Election {
	// Store candidate
	// Read candidate
	string public candidate; // candidate ia a state variable. By default it has a getter() function.
	// Constructor
	//function Election() public {
		constructor() public {
			candidate = "Candidate 1";
		}
		
}