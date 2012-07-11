Given /^there is a mag_tapes with "(.*?)" "(.*?)"$/ do |field, value|
  @mt = Fabricate(:mag_tape, field => value)
  MagTape.count.should == 1
end

When /^I fill in the mag_tape form correctly$/ do
  fill_in("Cost Per MSI", :with => @mt.costPerMsi)
  fill_in("Cost Per Roll", :with => @mt.costPerRoll)
  fill_in("Type Cate", :with => @mt.typeCate)
  fill_in("Tape Description", :with => @mt.tapeDescription)
  fill_in("Tape Id", :with => @mt.tapeId)
  fill_in("Tape Length", :with => @mt.tapeLength)
  fill_in("Tape Type", :with => @mt.tapeType)
  fill_in("Tape Width", :with => @mt.tapeWidth)
end

Then /^I am presented with the new mag_tape$/ do
  MagTape.count.should == 2
  page.should have_content(@mt.tapeWidth)
  current_path.should == mag_tape_path(2)
end

When /^I fill in the mag_tape form incorrectly$/ do
  fill_in("Tape Description", :with => '')
  fill_in("Tape Id", :with => '')
end

Then /^I should see specific details about the selected mag_tape$/ do
  page.should have_content(@mt.tapeWidth)
end
