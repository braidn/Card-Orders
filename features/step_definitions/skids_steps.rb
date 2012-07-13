Given /^there is a skids with "(.*?)" "(.*?)"$/ do |field, value|
  @skid = Fabricate(:skid, field => value)
  Skid.count.should == 1
end

When /^I fill in the skids form correctly$/ do
  fill_in("Quantity Per Skid", :with => @skid.quantityPerSkid)
  fill_in("Cost", :with => @skid.skidCost)
  fill_in("Description", :with => @skid.skidDescription)
  fill_in("Entry Points", :with => @skid.skidEntryPoints)
  fill_in("Height", :with => @skid.skidHeight)
  fill_in("ID", :with => @skid.skidId)
  fill_in("Length", :with => @skid.skidLength)
  fill_in("Mat", :with => @skid.skidMat)
  fill_in("Width", :with => @skid.skidWidth)
end

Then /^I am presented with the new skid$/ do
  Skid.count.should == 2
  page.should have_content(@skid.skidLength)
  current_path.should == skid_path(2)
end

When /^I fill in the skids form incorrectly$/ do
  fill_in("Description", :with => '')
end

Then /^I should see specific details about the selected skids$/ do
  page.should have_content(@skid.skidDescription)
end
