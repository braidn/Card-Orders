Given /^there is a press_standard with "(.*?)" "(.*?)"$/ do |field, value|
  @ps = Fabricate(:press_standard, field => value)
  PressStandard.count.should == 1
end

When /^I fill in the press_standards form correctly$/ do
  fill_in("Amp Material", :with => @ps.ampMaterial)
  fill_in("Amp Time", :with => @ps.ampTime)
  fill_in("Color Material", :with => @ps.colorMaterial)
  fill_in("Color Time", :with => @ps.colorTime)
  fill_in("Color Waste", :with => @ps.colorWaste)
  fill_in("Die Material", :with => @ps.dieMaterial)
  fill_in("Die Speed", :with => @ps.dieSpeed)
  fill_in("Die Time", :with => @ps.dieTime)
  fill_in("Die Waste", :with => @ps.dieWaste)
  fill_in("Head Material", :with => @ps.headMaterial)
  fill_in("Head Time", :with => @ps.headTime)
  fill_in("Hot Stamp Material", :with => @ps.hotStampMaterial)
  fill_in("Hot Stamp Speed", :with => @ps.hotStampSpeed)
  fill_in("Hot Stamp Time", :with => @ps.hotStampTime)
  fill_in("Hot Stamp Waste", :with => @ps.hotStampWaste)
  fill_in("Ink Type", :with => @ps.inkType)
  fill_in("Ink Type Sig", :with => @ps.inkTypeSig)
  fill_in("Ink Type Varnish", :with => @ps.inkTypeVarnish)
  fill_in("Ink Material", :with => @ps.inkMaterial)
  fill_in("Ink Time", :with => @ps.inkTime)
  fill_in("Inline Material", :with => @ps.inlineMaterial)
  fill_in("Inline Speed", :with => @ps.inlineSpeed)
  fill_in("Inline Time", :with => @ps.inlineTime)
  fill_in("Inline Waste", :with => @ps.inlineWaste)
  fill_in("Insertion Material", :with => @ps.insertionMaterial)
  fill_in("Insertion Speed", :with => @ps.insertionSpeed)
  fill_in("Insertion Time", :with => @ps.insertionSpeed)
  fill_in("Lamination Material", :with => @ps.laminationMaterial)
  fill_in("Lamination Speed", :with => @ps.laminationSpeed)
  fill_in("Lamination Time", :with => @ps.laminationTime)
  fill_in("Lamination Waste", :with => @ps.laminationWaste)
  fill_in("Machine Name", :with => @ps.machineName)
  fill_in("Machine ID", :with => @ps.machineID)
  fill_in("Machine Labor", :with => @ps.machineLabor)
  fill_in("Machine Overhead", :with => @ps.machineOverhead)
  fill_in("Machine Pitch", :with => @ps.machinePitch)
  fill_in("Machine Speed", :with => @ps.machineSpeed)
  fill_in("Machine Type", :with => @ps.machineType)
  fill_in("Machine Width", :with => @ps.machineWidth)
  fill_in("Number Material", :with => @ps.numberMaterial)
  fill_in("Number Speed", :with => @ps.numberSpeed)
  fill_in("Number Time", :with => @ps.numberSpeed)
  fill_in("Number Waste", :with => @ps.numberWaste)
  fill_in("Plate Change Waste", :with => @ps.plateChangeWaste)
  fill_in("Plate Change Material", :with => @ps.plateChangeMaterial)
  fill_in("Plate Change Time", :with => @ps.plateChangeTime)
  fill_in("Press Setup Material", :with => @ps.pressSetupMaterial)
  fill_in("Press Setup Time", :with => @ps.pressSetupTime)
  fill_in("Print Stations", :with => @ps.printStations)
  fill_in("Roll Change Material", :with => @ps.rollChangeMaterial)
  fill_in("Roll Change Time", :with => @ps.rollChangeTime)
  fill_in("Roll Change Waste", :with => @ps.rollChangeWaste)
  fill_in("Slit Material", :with => @ps.slitMaterial)
  fill_in("Slit Speed", :with => @ps.slitSpeed)
  fill_in("Slit Time", :with => @ps.slitTime)
  fill_in("Slit Waste", :with => @ps.slitWaste)
  fill_in("Trim", :with => @ps.trim)
  fill_in("Turret Material", :with => @ps.turretMaterial)
  fill_in("Turret Speed", :with => @ps.turretSpeed)
  fill_in("Turret Time", :with => @ps.turretTime)
  fill_in("Turret Waste", :with => @ps.turretWaste)
end

Then /^I am presented with the new press_standard$/ do
  PressStandard.count.should == 2
  page.should have_content(@ps.turretWaste)
  current_path.should == press_standard_path(2)
end

When /^I fill in the press_standard form incorrectly$/ do
  fill_in("Machine Name", :with => '')
  fill_in("Machine ID", :with => '')
end

Then /^I should see specific details about the selected press_standard$/ do
  page.should have_content(@ps.machineID)
end
