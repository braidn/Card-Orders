Given /^there is a die with "(.*?)" "(.*?)"$/ do |field, fill|
  @die = Fabricate(:die, field => fill)
  Die.count.should == 1
end

When /^I fill in the dies form correctly$/ do
  fill_in("Die Category", :with => @die.dieCatagory)
  fill_in("Cost Per Card", :with => @die.costpercard)
  fill_in("Cost Per Tooth", :with => @die.costspertooth)
  fill_in("Description", :with => @die.description)
  fill_in("Initial Cost", :with => @die.initialCost)
  fill_in("Initial Life", :with => @die.initialLife)
  fill_in("Retool Cost", :with => @die.retoolCost)
  fill_in("Retool Life", :with => @die.retoolLife)
  fill_in("Retool Times", :with => @die.retoolTimes)
  fill_in("Total Cards", :with => @die.totalCards)
  fill_in("Total Cost", :with => @die.totalCost)
  fill_in("Die Type", :with => @die.die_type)
  fill_in("Vendor ID Numb", :with => @die.vendorIDNumb)
end

Then /^I am presented with the new die$/ do
  current_path.should == die_path(2)
  page.should have_content(@die.die_type)
end

When /^I fill in the die form incorrectly$/ do
  fill_in("Die Category", :with => '')
  fill_in("Description", :with => '')
  fill_in("Die Type", :with => '')
end

Then /^I should see specific details about the selected die$/ do
  page.should have_content(@die.vendorIDNumb)
end
