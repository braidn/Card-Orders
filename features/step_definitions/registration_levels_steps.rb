Given /^there is a registration_level with "(.*?)" "(.*?)"$/ do |field, value|
  @rl = Fabricate(:registration_level, field => value)
  RegistrationLevel.count.should == 1
end

When /^I fill in the registration_levels form correctly$/ do
  fill_in("Description", :with => @rl.registrationDescription)
  fill_in("Level ID", :with => @rl.registrationLevelId)
  fill_in("Speed", :with => @rl.registrationSpeed)
  fill_in("Waste", :with => @rl.registrationWaste)
end

Then /^I am presented with the new registration_level$/ do
  RegistrationLevel.count.should == 2
  page.should have_content(@rl.registrationWaste)
  current_path.should == registration_level_path(2)
end

When /^I fill in the registration_levels form incorrectly$/ do
  fill_in("Description", :with => '')
end

Then /^I should see specific details about the selected registration_levels$/ do
  page.should have_content(@rl.registrationWaste)
end
