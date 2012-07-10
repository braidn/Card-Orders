Given /^there is a ink catagory with "(.*?)" "(.*?)"$/ do |field, value|
  @ic = Fabricate(:inkcatagory, field => value)
  Inkcatagory.count.should == 1
end

When /^I fill in the in catagory form correctly$/ do
  fill_in("Description", :with => @ic.description)
end

Then /^I am presented with the new ink catagory$/ do
  Inkcatagory.count.should == 2
  current_path.should == inkcatagory_path(2)
  page.should have_content(@ic.description)
end

When /^I fill in the inc catagory form incorrectly$/ do
  fill_in("Description", :with => '')
end

Then /^I should see specific details about the selected ink catagory$/ do
  page.should have_content(@ic.description)
end
