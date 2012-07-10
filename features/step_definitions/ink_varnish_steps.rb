Given /^there is a ink_varnish with "(.*?)" "(.*?)"$/ do |field, value|
  @iv = Fabricate(:ink_varnish, field => value)
  InkVarnish.count.should == 1
end

When /^I fill in the ink_varnish form correctly$/ do
  fill_in("Ink Cost Per Pound", :with => @iv.inkCostPerPound)
  fill_in("Ink MSI Per Pound", :with => @iv.inkMsiPerPound)
  fill_in("Vendor", :with => @iv.vendor)
  fill_in("Vendor Part Number", :with => @iv.vendorPartNumber)
end

Then /^I am presented with the new ink_varnish$/ do
  page.should have_content(@iv.vendor)
  current_path.should == ink_varnish_path(2)
  InkVarnish.count.should == 2
end

When /^I fill in the ink_varnish form incorrectly$/ do
  fill_in("Vendor", :with => '')
  fill_in("Vendor Part Number", :with => '')
end

Then /^I should see specific details about the selected ink_varnish$/ do
  page.should have_content(@iv.vendor)
end
