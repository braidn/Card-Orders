Given /^I am on the root_path$/ do
  visit('/')
end

Then /^I should see a "([^"]*)" login field$/ do |email|
  find_field(email)
end

Then /^a "([^"]*)" field$/ do |password|
  find_field(password)
end
