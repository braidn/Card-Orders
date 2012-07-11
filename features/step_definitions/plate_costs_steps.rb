Given /^there is a plate_cost with "(.*?)" "(.*?)"$/ do |field, value|
  @pc = Fabricate(:plate_cost, field => value)
  PlateCost.count.should == 1
end

When /^I fill in the plate_cost form correctly$/ do
  fill_in("Digital", :with => @pc.digital)
  fill_in("Film Cost", :with => @pc.filmcost)
  fill_in("Film Square Inch", :with => @pc.filmSquareInch)
  fill_in("Labor Cost", :with => @pc.laborCost)
  fill_in("Machine Name", :with => @pc.machineName)
  fill_in("Process Time", :with => @pc.processTime)
  fill_in("Sheet Cost", :with => @pc.sheetCost)
  fill_in("Sheets Per Cycle", :with => @pc.sheetsPerCycle)
  fill_in("Square Inch Per Sheet", :with => @pc.squareInchPerSheet)
end

Then /^I am presented with the new plate_cost$/ do
  PlateCost.count.should == 2
  page.should have_content(@pc.sheetCost)
  current_path.should == plate_cost_path(2)
end

When /^I fill in the plate_cost form incorrectly$/ do
  fill_in("Machine Name", :with => '')
end

Then /^I should see specific details about the selected plate_cost$/ do
  page.should have_content(@pc.sheetCost)
end
