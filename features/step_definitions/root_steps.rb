Given /^I am on the root_path and not logged in$/ do
  visit('/')
end

Then /^I should see a "([^"]*)" login field$/ do |email|
  find_field(email)
end

Then /^a "([^"]*)" field$/ do |password|
  find_field(password)
end

Then /^a link to "([^"]*)"$/ do |link|
  find_link(link).visible?
end
