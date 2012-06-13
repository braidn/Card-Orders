Given /^there is an adhesive with description "(.*?)"$/ do |description|
  @stuff = Fabricate(:adhesive, :adhesivedescription => description)
end

Given /^I am at the list of adhesives$/ do
  visit(adhesives_path)
  page.should have_css('table td .btn')
end

When /^I click "([^"]*)"$/ do |button|
  click_on(button)
end

When /^I fill in the form correctly$/ do
  @adhesive = Fabricate(:adhesive)
  fill_in("Adhesive Description", :with => @adhesive.adhesivedescription)
  fill_in("Cost Per Pound", :with => @adhesive.costperlb)
  fill_in("MSI Per Pound", :with => @adhesive.msiperlb)
  fill_in("Part Number", :with => @adhesive.partnumber)
  fill_in("Primary Use", :with => @adhesive.primaryuse)
end

Then /^I am presented with the new adhesive$/ do
  page.should have_content(@adhesive.costperlb)
end

Then /^I am greeted with a message that reads "([^"]*)"$/ do |message|
  page.should have_content(message)
end

When /^I fill in the form incorrectly$/ do
  fill_in("Adhesive Description", :with => '')
  fill_in("Cost Per Pound", :with => 'No Numbers')
  fill_in('MSI Per Pound', :with => 'No Numbers')
end

Then /^the errors are highlighted$/ do
  page.should have_css('.field_with_errors')
end

Then /^I should see specific details about the selected adhesive$/ do
  page.should have_content("Adhesive Description")
  page.should have_content(@stuff.adhesivedescription)
end
