load "bin/dynamo"

Given /^the user calls '(.*)'$/ do |command|
  @io     = StringIO.new
  @result = Terminal.new(command.split(/\s+/), @io)
end

Then /^the program returns a simple passphrase$/ do
  pending
end

Then /^the program returns a complex passphrase$/ do
  pending
end