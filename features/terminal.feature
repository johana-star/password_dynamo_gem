Feature: Providing passwords at the command line
	As a person I need to generate memorable passwords at the command line
	In order to have unique passwords anywhere I use them.

@announce
Scenario: Simple password
	Given I run `dynamo`
  Then the output should match /(\w*\s){3}\w*/

@announce
Scenario: Complex password
	Given I run `dynamo --complex`
  Then the output should match /[A-Z]/
  Then the output should match /-/
  Then the output should match /\d/

