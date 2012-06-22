Given /^there is a cores with generalName "(.*?)"$/ do |stuff|
  @core = Fabricate(:core, :generalName => stuff)
end

Given /^I am at the list of cores$/ do
  visit(cores_path)
end

When /^I fill in the core form correctly$/ do
  fill_in("General Name", :with => @core.generalName)
  fill_in("Cost", :with => @core.cost)
  fill_in("Inner Diameter", :with => @core.innerDiameter)
  fill_in("Outer Diameter", :with => @core.outerDiameter)
  fill_in("Core Type", :with => @core.core_type)
  fill_in("Wall Thickness", :with => @core.wallThickness)
  fill_in("Width", :with => @core.width)
  fill_in("Internal Name", :with => @core.internalName)
end

Then /^I am presented with the new core$/ do
  current_path.should == core_path(2)
  page.should have_content(@core.internalName)
end

When /^I fill in the Core form incorrectly$/ do
  fill_in("General Name", :with => '')
  fill_in("Cost", :with => '')
end

Then /^I should see specific details about the selected core$/ do
  page.should have_content(@core.width)
end
