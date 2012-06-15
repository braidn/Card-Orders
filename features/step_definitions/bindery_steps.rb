Given /^there is a bindery with opdescription "(.*?)"$/ do |desc|
  @bindery = Fabricate(:bindery, :opdescription => desc)
end

Given /^I am at the list of binderies$/ do
  visit(binderies_path)
end

When /^I fill in the bindery form correctly$/ do
  @cbindery = Fabricate(:bindery)
  fill_in("Description", :with => @cbindery.opdescription)
  fill_in("Unit", :with => @cbindery.unit)
  fill_in("Unit Cost", :with => @cbindery.unitcost)
end

Then /^I am presented with the new bindery$/ do
  page.has_content?(@cbindery.opdescription)
end

When /^I fill in the bindery form incorrectly$/ do
  fill_in("Description", :with => '')
end

Then /^I should see specific details about the selected bindery$/ do
  page.has_content?(@bindery.opdescription)
end
