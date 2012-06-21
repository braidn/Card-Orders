Given /^there is a cores with generalName "(.*?)"$/ do |stuff|
  @core = Fabricate(:core, :generalName => stuff)
end

Given /^I am at the list of cores$/ do
  visit(cores_path)
end

When /^I fill in the core form correctly$/ do

end

Then /^I am presented with the new core$/ do
    pending # express the regexp above with the code you wish you had
end

When /^I fill in the Core form incorrectly$/ do
    pending # express the regexp above with the code you wish you had
end

Then /^I should see specific details about the selected core$/ do
    pending # express the regexp above with the code you wish you had
end
