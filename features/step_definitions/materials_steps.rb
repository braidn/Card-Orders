Given /^there is a material with "(.*?)" "(.*?)"$/ do |field, value|
  @mat = Fabricate(:material, field => value)
  Material.count.should == 1
end

When /^I fill in the material form correctly$/ do
  fill_in("Material Category Id", :with => @mat.materialCatId)
  fill_in("Blue Feet Per Minute", :with => @mat.blueFeetPerMinute)
  fill_in("Blue Length", :with => @mat.blueLength)
  fill_in("Cored OD", :with => @mat.coredOd)
  fill_in("Egan Feet Per Minute", :with => @mat.eganFeetPerMinute)
  fill_in("Egan Length", :with => @mat.eganLength)
  fill_in("Material Description", :with => @mat.materialDescription)
  fill_in("Material MSI Cost", :with => @mat.materialMsiCost)
  fill_in("Material Pre-Stripe", :with => @mat.materialPreStripe)
  fill_in("Material Roll Length Master", :with => @mat.materialRollLengthMaster)
  fill_in("Material Roll Width", :with => @mat.materialRollWidth)
  fill_in("Material Thickness", :with => @mat.materialThickness)
  fill_in("Vendor", :with => @mat.vendor)
  fill_in("Vendor Part Number", :with => @mat.vendorPartNum)
end

Then /^I am presented with the new material$/ do
  Material.count.should == 2
  page.should have_content(@mat.materialRollLengthMaster)
  current_path.should == material_path(2)
end

When /^I fill in the material form incorrectly$/ do
  fill_in("Vendor", :with => "")
  fill_in("Material Description", :with => "")
  fill_in("Material MSI Cost", :with => "")
end

Then /^I should see specific details about the selected material$/ do
  page.should have_content(@mat.materialRollLengthMaster)
end
