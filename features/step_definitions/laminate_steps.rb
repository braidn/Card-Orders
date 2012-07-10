Given /^there is a laminate with "(.*?)" "(.*?)"$/ do |field, value|
  @lam = Fabricate(:laminate, field => value)
  Laminate.count.should == 1
end

When /^I fill in the laminate form correctly$/ do
  fill_in("Adhesive", :with => @lam.lamAdhesive)
  fill_in("Description", :with => @lam.lamDescription)
  fill_in("Length", :with => @lam.lamLength)
  fill_in("MSI", :with => @lam.lamMsi)
  fill_in("Type", :with => @lam.lamType)
  fill_in("Width", :with => @lam.lamWidth)
end

Then /^I am presented with the new laminate$/ do
  Laminate.count.should == 2
  page.should have_content(@lam.lamWidth)
  current_path.should == laminate_path(2)
end

When /^I fill in the laminate form incorrectly$/ do
  fill_in("Adhesive", :with => '')
  fill_in("Description", :with => '')
end

Then /^I should see specific details about the selected laminate$/ do
  page.should have_content(@lam.lamType)
end
