Given /^there is a tooling_spec with "(.*?)" "(.*?)"$/ do |field, value|
  @tool = Fabricate(:tooling_specification, field => value)
  ToolingSpecification.count.should == 1
end

When /^I fill in the tooling_spec form correctly$/ do
  fill_in("Add Amortize Quantity", :with => @tool.addAmortizeQuantity)
  fill_in("Add Tooling Cost", :with => @tool.addToolingCost)
  fill_in("Design By", :with => @tool.designBy)
  fill_in("Design Revision Date", :with => @tool.designRevDate)
  fill_in("Die Around", :with => @tool.dieAround)
  fill_in("Die ID", :with => @tool.dieId)
  fill_in("Die Sc", :with => @tool.dieSc)
  fill_in("Image File", :with => @tool.imageFile)
  fill_in("Job Number", :with => @tool.jobNumber)
  fill_in("New Die Required", :with => @tool.newDieRequired)
  fill_in("Tooling Comment", :with => @tool.toolingComment)
  fill_in("Tool Sc", :with => @tool.toolSc)
  fill_in("Tool Specification ID", :with => @tool.toolSpecificationId)
end

Then /^I am presented with the new tooling_spec$/ do
  ToolingSpecification.count.should == 2
  page.should have_content(@tool.jobNumber)
  current_path.should == tooling_specification_path(2)
end

When /^I fill in the tooling_spec form incorrectly$/ do
  fill_in("Job Number", :with => '')
end

Then /^I should see specific details about the selected tooling_spec$/ do
  page.should have_content(@tool.jobNumber)
end
