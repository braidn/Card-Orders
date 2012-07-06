Given /^there is a die_type with "(.*?)" "(.*?)"$/ do |name, change|
  @dietype = Fabricate(:dietype, name => change)
  Dietype.count.should == 1
end

When /^I fill in the die_type form correctly$/ do
  fill_in("Die Description", :with => @dietype.dieDescription)
end

Then /^I am presented with the new die_type$/ do
  Dietype.count.should == 2
  current_path.should == dietype_path(2)
  page.should have_content(@dietype.dieDescription)
end

When /^I fill in the die_type form incorrectly$/ do
  fill_in("Die Description", :with => '')
end

Then /^I should see specific details about the selected die_type$/ do
  page.should have_content(@dietype.dieDescription)
end
