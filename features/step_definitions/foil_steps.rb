Given /^there is a foil with "(.*?)" "(.*?)"$/ do |field, value|
  @foil = Fabricate(:foil, field => value)
  Foil.count.should == 1
end

When /^I fill in the foil form correctly$/ do
  fill_in("Description", :with => @foil.description)
  fill_in("Length", :with => @foil.length)
  fill_in("MSI", :with => @foil.msi)
  fill_in("Type", :with => @foil.foil_type)
  fill_in("Width", :with => @foil.width)
end

Then /^I am presented with the new foil$/ do
  Foil.count.should == 2
  current_path.should == foil_path(2)
end

When /^I fill in the foil form incorrectly$/ do
  fill_in("Description", :with => '')
  fill_in("Type", :with => '')
end

Then /^I should see specific details about the selected foil$/ do
  page.should have_content(@foil.description)
end
