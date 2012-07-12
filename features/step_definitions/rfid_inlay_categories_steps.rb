Given /^there is a rfid_inlay_category with "(.*?)" "(.*?)"$/ do |arg1, arg2|
  @ric = Fabricate(:rfid_inlay_category)
  RfidInlayCategory.count.should == 1
end

When /^I fill in the rfid_inlay_category form correctly$/ do
  fill_in("Type", :with => @ric.inlayType)
end

Then /^I am presented with the new rfid_inlay_category$/ do
  RfidInlayCategory.count.should == 2
  page.should have_content(@ric.inlayType)
  current_path.should == rfid_inlay_category_path(2)
end

When /^I fill in the rfid_inlay_category form incorrectly$/ do
  fill_in("Type", :with => '')
end

Then /^I should see specific details about the selected rfid_inlay_category$/ do
  page.should have_content(@ric.inlayType)
end
