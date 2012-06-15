Given /^there is a billing with addresstype "(.*?)"$/ do |address|
  @billing = Fabricate(:billing, :addressType => address)
end

Given /^I am at the list of billings$/ do
  visit(billings_path)
  page.has_content?("Customer ID")
  page.has_content?("Address Type")
  page.has_content?("City")
  page.has_content?("State")
  page.has_content?("Postal Code")
end

When /^I fill in the billing form correctly$/ do
  @cbilled = Fabricate(:billing)
  fill_in("Address Type", :with => @cbilled.addressType)
  fill_in("City", :with => @cbilled.city)
  fill_in("Country", :with => @cbilled.country)
  fill_in("Postal Code", :with => @cbilled.postalCode)
  fill_in("State", :with => @cbilled.state)
  fill_in("Street1", :with => @cbilled.street1)
  fill_in("Street1a", :with => @cbilled.street1a)
  fill_in("Street2", :with => @cbilled.street2)
  fill_in("Street2a", :with => @cbilled.street2a)
end

When /^I fill in the billing form incorrectly$/ do
  fill_in("Address Type", :with => "")
  fill_in("City", :with => "")
  fill_in("State", :with => "")
  fill_in("Country", :with => "")
  fill_in("Postal Code", :with => "Byte me")
end

Then /^I am presented with the new billing$/ do
  page.has_content?(@cbilled.street1)
end

Then /^I should see specific details about the selected billing$/ do
  page.has_content?(@billing.addressType)
end
