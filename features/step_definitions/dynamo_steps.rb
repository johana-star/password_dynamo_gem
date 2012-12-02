require_relative "../../lib/dynamo.rb"

Given /^I have a Dynamo class$/ do
  @dynamo = Dynamo.new
end

When /^I generate a password$/ do
  @result = @dynamo.generate_password
end

When /^I generate a (.*) password$/ do |style|
  @result = @dynamo.generate_password :"#{style}"
end

Then /^I get back a (\d*) word passphrase$/ do |digit|
  @result.split(/\s|\d|-/).length.should eq digit.to_i
end

Then /^it has a capital letter$/ do
  @result.should match /[A-Z]/
end

Then /^it has no spaces$/ do
  @result.should_not match /\s/
end

Then /^it has a numeral$/ do
  @result.should match /\d/
end