Feature: Generating passwords
  As a person I need to generate memorable passwords
  In order to have unique passwords anywhere I use them.

Scenario: Simple password
  Given I have a Dynamo class
  When I generate a password
  Then I get back a 4 word passphrase

Scenario: Complex password
  Given I have a Dynamo class
  When I generate a complex password
  Then I get back a 4 word passphrase
  And it has a capital letter
  And it has no spaces
  And it has a numeral
