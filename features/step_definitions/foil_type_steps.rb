Given /^there is a foil_type with "(.*?)" "(.*?)"$/ do |field, value|
  @foil_type = Fabricate(:foiltype, field => value)
  Foiltype.count.should == 1
end

When /^I fill in the foil_type form correctly$/ do
  fill_in("Foil Type", :with => @foil_type.foiltype_type)
end

Then /^I am presented with the new foil_type$/ do
  page.should have_content(@foil_type.foiltype_type)
  current_path.should == foiltype_path(2)
  Foiltype.count.should == 2
end

When /^I fill in the foil_type form incorrectly$/ do
  fill_in("Foil Type", :with => '')
end

Then /^I should see specific details about the selected foil_type$/ do
  page.should have_content(@foil_type.foiltype_type)
end
