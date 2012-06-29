Given /^there is a coretype with "(.*?)" "(.*?)"$/ do |field, filler|
  @coretype = Fabricate(:coretype, field => filler)
  Coretype.count.should == 1
end

Given /^I am at the list of "(.*?)"$/ do |items|
  visit "/#{items}/"
  page.should have_content('Show')
end

When /^I fill in the coretype form correctly$/ do
  fill_in("Material Description", :with => @coretype.matDescription)
  fill_in("Material", :with => @coretype.material)
end

Then /^I am presented with the new coretype$/ do
  current_path.should == coretype_path(2)
  page.should have_content(@coretype.material)
end

When /^I fill in the Coretype form incorrectly$/ do
  fill_in("Material Description", :with => '')
  fill_in("Material", :with => '')
end

Then /^I should see specific details about the selected coretype$/ do
  page.should have_content(@coretype.material)
end
