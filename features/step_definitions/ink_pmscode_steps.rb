Given /^there is a ink pms with "(.*?)" "(.*?)"$/ do |field, value|
  @ipms = Fabricate(:inkpmscode, field => value)
  Inkpmscode.count.should == 1
end

When /^I fill in the ink pms code form correctly$/ do
  fill_in("Vendor Part Number", :with => @ipms.vendorpartnumb)
  fill_in("Vendor", :with => @ipms.vendor)
  fill_in("Mag Type", :with => @ipms.magtype)
  fill_in("Ink Type", :with => @ipms.inktype)
  fill_in("Ink MSI Per Pound", :with => @ipms.inkmsiperpound)
  fill_in("InkCost Per Pound", :with => @ipms.inkcostperpound)
end

Then /^I am presented with the new ink pms code$/ do
  Inkpmscode.count.should == 2
  page.should have_content(@ipms.inktype)
  current_path.should == inkpmscode_path(2)
end

When /^I fill in the ink pms code form incorrectly$/ do
  fill_in("Vendor Part Number", :with => '')
  fill_in("Vendor", :with => '')
  fill_in("Ink Type", :with => 'a')
  fill_in("Ink MSI Per Pound", :with => 'a')
  fill_in("InkCost Per Pound", :with => 'a')
end

Then /^I should see specific details about the selected ink pms code$/ do
  page.should have_content(@ipms.inktype)
end
