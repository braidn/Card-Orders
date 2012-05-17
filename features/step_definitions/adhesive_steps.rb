Given /^I am at the list of adhesives$/ do
  visit('/adhesives/')
end
When /^I click "([^"]*)"$/ do |new|
  click_on(new)
end

When /^I fill in the form correctly$/ do
  @adhesive = Factory(:adhesive)
  fill_in("Adhesive Description", :with => @adhesive.adhesivedescription)
  fill_in("Cost Per Pound", :with => @adhesive.costperlb)
  fill_in("MSI Per Pound", :with => @adhesive.msiperlb)
  fill_in("Part Number", :with => @adhesive.partnumber)
  fill_in("Primary Use", :with => @adhesive.primaryuse)
end

Then /^I am presented with the new item$/ do
  current_path.should == adhesive_path(@adhesive)
end

Then /^I am cheerfully greeted with a success message that reads "([^"]*)"$/ do |message|
  pending # express the regexp above with the code you wish you had
end
