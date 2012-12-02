Feature: Providing passwords at the command line
	As a person I need to generate memorable passwords at the command line
	In order to have unique passwords anywhere I use them.

Scenario: Simple password
	Given I call 'dynamo'
	When I give no options
	Then I should receive a simple passphrase

Scenario: Complex password
	Given I call 'dynamo'
	When I give --complex as an option
	Then I should receive a complex passphrase
