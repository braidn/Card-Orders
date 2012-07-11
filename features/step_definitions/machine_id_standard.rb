Given /^there is a machine_id_standard with "(.*?)" "(.*?)"$/ do |field, value|
  @mis = Fabricate(:machine_id_standard, field => value)
  MachineIdStandard.count.should == 1
end

When /^I fill in the machine_id_standard form correctly$/ do
  fill_in("Die Material", :with => @mis.dieMaterial)
  fill_in("Die Speed", :with => @mis.dieSpeed)
  fill_in("Die Time", :with => @mis.dieTime)
  fill_in("Die Waste", :with => @mis.dieWaste)
  fill_in("Folder Material", :with => @mis.folderMaterial)
  fill_in("Folder Speed", :with => @mis.folderSpeed)
  fill_in("Folder Time", :with => @mis.folderTime)
  fill_in("Folder Waste", :with => @mis.folderWaste)
  fill_in("Insertion Material", :with => @mis.insertionMaterial)
  fill_in("Insertion Speed", :with => @mis.insertionSpeed)
  fill_in("Insertion Time", :with => @mis.insertionTime)
  fill_in("Machine Name", :with => @mis.machineName)
  fill_in("Machine ID", :with => @mis.machineId)
  fill_in("Machine Labor", :with => @mis.machineLabor)
  fill_in("Machine Overhead", :with => @mis.machineOverhead)
  fill_in("Machine Pitch", :with => @mis.machinePitch)
  fill_in("Machine Speed", :with => @mis.machineSpeed)
  fill_in("Machine Type", :with => @mis.machineType)
  fill_in("Machine Width", :with => @mis.machineWidth)
  fill_in("Number Material", :with => @mis.numMat)
  fill_in("Number Speed", :with => @mis.numSpeed)
  fill_in("Number Time", :with => @mis.numbTime)
  fill_in("Number Waste", :with => @mis.numWaste)
  fill_in("Roll Change Material", :with => @mis.rollChangeMat)
  fill_in("Roll Change Time", :with => @mis.rollChangeTime)
  fill_in("Roll Change Waste", :with => @mis.rollChangeWaste)
  fill_in("Slit Material", :with => @mis.slitMat)
  fill_in("Slit Speed", :with => @mis.slitSpeed)
  fill_in("Slit Time", :with => @mis.slitTime)
  fill_in("Slit Waste", :with => @mis.slitWaste)
  fill_in("Trim", :with => @mis.trim)
end

Then /^I am presented with the new machine_id_standard$/ do
  MachineIdStandard.count.should == 2
  page.should have_content(@mis.slitWaste)
  current_path.should == machine_id_standard_path(2)
end

When /^I fill in the machine_id_standard form incorrectly$/ do
  fill_in("Machine ID", :with => '')
  fill_in("Machine Name", :with => '')
end

Then /^I should see specific details about the selected machine_id_standard$/ do
  page.should have_content(@mis.slitWaste)
end
