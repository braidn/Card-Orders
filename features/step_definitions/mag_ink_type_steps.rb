Given /^there is a mag_ink_type with "(.*?)" "(.*?)"$/ do |field, value|
  @mit = Fabricate(:magInkType, field => value)
  MagInkType.count.should == 1
end

When /^I fill in the mag_ink_type form correctly$/ do
  fill_in("Gallon Cost", :with => @mit.gallonCost)
  fill_in("Ink Type", :with => @mit.inkType)
  fill_in("Ink Type Id", :with => @mit.inkTypeId)
end

Then /^I am presented with the new mag_ink_type$/ do
  MagInkType.count.should == 2
  page.should have_content(@mit.inkType)
  current_path.should == mag_ink_type_path(2)
end

When /^I fill in the mag_ink_type form incorrectly$/ do
  fill_in("Ink Type", :with => '')
end

Then /^I should see specific details about the selected mag_ink_type$/ do
  page.should have_content(@mit.inkType)
end
