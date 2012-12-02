Feature: Generating passwords
	As a person I need to generate memorable passwords
	In order to have unique passwords anywhere I use them.

Scenario: 
	Given I have a Dynamo class
	When I call generate password
	Then I get back a four word passphrase