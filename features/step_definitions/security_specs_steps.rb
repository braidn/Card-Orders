Given /^there is a security_spec with "(.*?)" "(.*?)"$/ do |field, value|
  @ss = Fabricate(:security_spec, field => value)
  SecuritySpec.count.should == 1
end

When /^I fill in the security_spec form correctly$/ do
  fill_in("Change Master Recombine", :with => @ss.changsMaterRecombine)
  fill_in("Cold Foil ID", :with => @ss.coldFoilId)
  fill_in("Cold Foil Width", :with => @ss.coldFoilWidth)
  fill_in("Custom Foil Amortize Qty", :with => @ss.customFoilAmortizeQty)
  fill_in("Hot Complex Tool", :with => @ss.hotComplexTool)
  fill_in("Hot Foil Width", :with => @ss.hotFoilWidth)
  fill_in("Hot Medium Tool", :with => @ss.hotMediumTool)
  fill_in("Hot Simple Tool", :with => @ss.hotSimpleTool)
  fill_in("Hot Stamp Foil ID", :with => @ss.hotStampFoilId)
  fill_in("Job Number", :with => @ss.jobNumber)
  fill_in("Lamination ID", :with => @ss.laminationId)
  fill_in("Lamination Width", :with => @ss.laminationWidth)
  fill_in("Security Comment", :with => @ss.securityComment)
  fill_in("Security Spec ID", :with => @ss.securitySpecId)
end

Then /^I am presented with the new security_spec$/ do
  SecuritySpec.count.should == 2
  page.should have_content(@ss.securitySpecId)
  current_path.should == security_spec_path(2)
end

When /^I fill in the security_spec form incorrectly$/ do
  fill_in("Job Number", :with => '')
end

Then /^I should see specific details about the selected security_spec$/ do
  page.should have_content(@ss.jobNumber)
end
