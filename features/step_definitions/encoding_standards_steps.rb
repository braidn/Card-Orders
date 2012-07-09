Given /^there is a encodingstandard with "(.*?)" "(.*?)"$/ do |row, value|
  @es = Fabricate(:encodingstandard, row => value)
  Encodingstandard.count.should == 1
end

When /^I fill in the encoding standard form correctly$/ do
  fill_in("Machine Description", :with => @es.mchDescription)
  fill_in("Bagging", :with => @es.bagging)
  fill_in("Barcode", :with => @es.barcode)
  fill_in("Hico", :with => @es.hico)
  fill_in("Inches Per Second", :with => @es.inchespersecond)
  fill_in("Labor", :with => @es.labor)
  fill_in("Machine Name", :with => @es.machineName)
  fill_in("Multiple Pass", :with => @es.multiplepass)
  fill_in("Overhead", :with => @es.overhead)
  fill_in("Run Waste", :with => @es.runwaste)
  fill_in("Variable Data", :with => @es.variabledata)
  fill_in("Seconds Per Hour", :with => @es.secondsperhour)
end

Then /^I am presented with the new encoding standard$/ do
  Encodingstandard.count.should == 2
  current_path.should == encodingstandard_path(2)
end

When /^I fill in the encoding standard form incorrectly$/ do
  fill_in("Machine Name", :with => "")
end

Then /^I should see specific details about the selected encodingstandard$/ do
  page.should have_content(@es.runwaste)
end
