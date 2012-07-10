Given /^there is a ink signature with "(.*?)" "(.*?)"$/ do |field, value|
  @isig = Fabricate(:inksignature, field => value)
  Inksignature.count.should == 1
end

When /^I fill in the ink signature form correctly$/ do
  fill_in("Vendor Part Number", :with => @isig.vendorpartnumber)
  fill_in("Vendor", :with => @isig.vendor)
  fill_in("Mag Type", :with => @isig.magtype)
  fill_in("Ink Type", :with => @isig.inktype)
  fill_in("Ink MSI Per Pound", :with => @isig.inkmsiperpound)
  fill_in("InkCost Per Pound", :with => @isig.inkcostperpound)
end

Then /^I am presented with the new ink signature$/ do
  Inksignature.count.should == 2
  page.should have_content(@isig.inktype)
  current_path.should == inksignature_path(2)
end

When /^I fill in the ink signature form incorrectly$/ do
  fill_in("Vendor Part Number", :with => '')
  fill_in("Vendor", :with => '')
  fill_in("Ink Type", :with => 'a')
  fill_in("Ink MSI Per Pound", :with => 'a')
  fill_in("InkCost Per Pound", :with => 'a')
end

Then /^I should see specific details about the selected ink signature$/ do
  page.should have_content(@isig.inktype)
end
