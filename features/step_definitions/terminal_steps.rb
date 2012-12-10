load "bin/dynamo"

Then /^the program returns a simple passphrase$/ do
  expected = /\w\s\w\s\w/
  assert_matching_output(expected, all_output)
end

Then /^the program returns a complex passphrase$/ do
  @result.split(/\s|\d|-/).length.should eq 4
  @result.should match /[A-Z]/
  @result.should match /\d/
end