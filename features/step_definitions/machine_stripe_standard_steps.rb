Given /^there is a machine_stripe_standard with "(.*?)" "(.*?)"$/ do |field, value|
  @mss = Fabricate(:machine_stripe_standard, field => value)
  MachineStripeStandard.count.should == 1
end

When /^I fill in the machine_stripe_standard form correctly$/ do
  fill_in("Amp Material", :with => @mss.ampMaterial)
  fill_in("Amp Time", :with => @mss.ampTime)
  fill_in("Head Material", :with => @mss.headMaterial)
  fill_in("Head Time", :with => @mss.headTime)
  fill_in("Ink Material", :with => @mss.inkMat)
  fill_in("Ink Time", :with => @mss.inkTime)
  fill_in("Machine Name", :with => @mss.machineName)
  fill_in("Machine Id", :with => @mss.machineId)
  fill_in("Machine Labor", :with => @mss.machineLabor)
  fill_in("Machine Overhead", :with => @mss.machineOverhead)
  fill_in("Machine Speed", :with => @mss.machineSpeed)
  fill_in("Machine Type", :with => @mss.machineType)
  fill_in("Machine Width", :with => @mss.machineWidth)
  fill_in("Roll Change Material", :with => @mss.rollChangeMat)
  fill_in("Roll Change Time", :with => @mss.rollChangeTime)
  fill_in("Slit Material", :with => @mss.slitMat)
  fill_in("Slit Speed", :with => @mss.slitSpeed)
  fill_in("Slit Time", :with => @mss.slitTime)
  fill_in("Slit Waste", :with => @mss.slitWaste)
  fill_in("Trim", :with => @mss.trim)
  fill_in("Turret Material", :with => @mss.turretMat)
  fill_in("Turret Speed", :with => @mss.turretSpeed)
  fill_in("Turret Time", :with => @mss.turretTime)
  fill_in("Turret Waste", :with => @mss.turretWaste)
end

Then /^I am presented with the new machine_stripe_standard$/ do
  MachineStripeStandard.count.should == 2
  page.should have_content(@mss.turretTime)
  current_path.should == machine_stripe_standard_path(2)
end

When /^I fill in the machine_stripe_standard form incorrectly$/ do
  fill_in("Machine Name", :with => '')
  fill_in("Machine Id", :with => '')
end

Then /^I should see specific details about the selected machine_stripe_standard$/ do
  page.should have_content(@mss.machineName)
end
