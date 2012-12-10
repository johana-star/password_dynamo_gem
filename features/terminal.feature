Feature: Providing passwords at the command line
	As a person I need to generate memorable passwords at the command line
	In order to have unique passwords anywhere I use them.

Scenario: Simple password
	Given the user calls 'dynamo'
	Then the program returns a simple passphrase

Scenario: Complex password
	Given the user calls 'dynamo --complex'
	Then the program returns a complex passphrase
