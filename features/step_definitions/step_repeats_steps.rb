Given /^there is a step_repeat with "(.*?)" "(.*?)"$/ do |field, value|
  @sr = Fabricate(:step_repeat, field => value)
  StepRepeat.count.should == 1
end

When /^I fill in the step_repeat form correctly$/ do
  fill_in("Category", :with => @sr.category)
  fill_in("Description", :with => @sr.description)
  fill_in("Dimension Across", :with => @sr.dimensionAcross)
  fill_in("Dimension Around", :with => @sr.dimensionAround)
  fill_in("Distortion Factor", :with => @sr.distortionFactor)
  fill_in("Flexo Distortion", :with => @sr.flexoDistortion)
  fill_in("Flexo LP Distortion", :with => @sr.flexoLpDist)
  fill_in("Flexo Mounting Tape Thickness", :with => @sr.flexoMountingTapeThickness)
  fill_in("Flexo Plate Backing", :with => @sr.flexoPlateBacking)
  fill_in("Flexo Plate Thickness", :with => @sr.flexoPlateThickness)
  fill_in("Flexo Soft Thickness", :with => @sr.flexoSoftThickness)
  fill_in("Gap Across", :with => @sr.gapAcross)
  fill_in("Gap Around", :with => @sr.gapAround)
  fill_in("Internal Name", :with => @sr.internalName)
  fill_in("Letter Press Mounting Tape Thickness", :with => @sr.letterpressMountingTapeThickness)
  fill_in("Letter Press Plate Backing", :with => @sr.letterpressPlateBacking)
  fill_in("Letter Press Plate Thickness", :with => @sr.letterpressPlateThickness)
  fill_in("Letter Press Soft Thickness", :with => @sr.letterpressSoftThickness)
  fill_in("LP Distortion", :with => @sr.lpDistortion)
  fill_in("Offset", :with => @sr.offset)
  fill_in("Offset Amount", :with => @sr.offsetAmount)
  fill_in("Press Type", :with => @sr.pressType)
  fill_in("Print Diameter", :with => @sr.printDiameter)
  fill_in("Step Across", :with => @sr.stepAcross)
  fill_in("Step Around", :with => @sr.stepAround)
end

Then /^I am presented with the new step_repeat$/ do
  StepRepeat.count.should == 2
  page.should have_content(@sr.printDiameter)
  current_path.should == step_repeat_path(2)
end

When /^I fill in the step_repeat form incorrectly$/ do
  fill_in("Description", :with => '')
end

Then /^I should see specific details about the selected step_repeat$/ do
  page.should have_content(@sr.description)
end
