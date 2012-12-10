load "bin/dynamo"

Given /^the user calls '(.*)'$/ do |command|
  # This could be better handled with the approach detailed in [this blog post](http://blog.jcoglan.com/2009/11/14/testing-command-line-apps-with-cucumber/)
  @result = `#{command}`
end

Then /^the program returns a simple passphrase$/ do
  @result.split(/\s|\d|-/).length.should eq 4
end

Then /^the program returns a complex passphrase$/ do
  @result.split(/\s|\d|-/).length.should eq 4
  @result.should match /[A-Z]/
  @result.should match /\d/
end