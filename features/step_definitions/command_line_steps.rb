require_relative "../../lib/dynamo.rb"

Given /^I have a Dynamo class$/ do
  @dynamo = Dynamo.new
end

When /^I generate a password$/ do
  @result = @dynamo.generate_password
end

Then /^I get back a four word passphrase$/ do
  @result.split.length.should eq 4
end