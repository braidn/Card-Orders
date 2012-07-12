Given /^there is a rfid_inlay with "(.*?)" "(.*?)"$/ do |field, value|
  @ri = Fabricate(:rfid_inlay, field => value)
  RfidInlay.count.should == 1
end

When /^I fill in the rfid_inlay form correctly$/ do
  fill_in("Break 1", :with => @ri.break1)
  fill_in("Break 1 Price", :with => @ri.break1Price)
  fill_in("Break 2", :with => @ri.break2)
  fill_in("Break 2 Price", :with => @ri.break2Price)
  fill_in("Break 3", :with => @ri.break3)
  fill_in("Break 3 Price", :with => @ri.break3Price)
  fill_in("Break 4", :with => @ri.break4)
  fill_in("Break 4 Price", :with => @ri.break4Price)
  fill_in("Break 5", :with => @ri.break5)
  fill_in("Break 5 Price", :with => @ri.break5Price)
  fill_in("Description", :with => @ri.inlayDescription)
  fill_in("ID", :with => @ri.inlayId)
  fill_in("Type ID", :with => @ri.inlayTypeId)
  fill_in("Price", :with => @ri.price)
  fill_in("Vendor", :with => @ri.vendor)
  fill_in("Vendor Part Number", :with => @ri.vendorPartNumb)
end

Then /^I am presented with the new rfid_inlay$/ do
  RfidInlay.count.should == 2
  page.should have_content(@ri.vendor)
  current_path.should == rfid_inlay_path(2)
end

When /^I fill in the rfid_inlay form incorrectly$/ do
  fill_in("Vendor", :with => '')
  fill_in("Description", :with => '')
end

Then /^I should see specific details about the selected rfid_inlay$/ do
  page.should have_content(@ri.vendor)
end
