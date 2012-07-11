Given /^there is a product_format with "(.*?)" "(.*?)"$/ do |field, value|
  @pf = Fabricate(:product_format, field => value)
  ProductFormat.count.should == 1
end

When /^I fill in the product_format form correctly$/ do
  fill_in("Description", :with => @pf.description)
  fill_in("Format Id", :with => @pf.formatId)
end

Then /^I am presented with the new product_format$/ do
  ProductFormat.count.should == 2
  page.should have_content(@pf.formatId)
  current_path.should == product_format_path(2)
end

When /^I fill in the product_format form incorrectly$/ do
  fill_in("Description", :with => '')
end

Then /^I should see specific details about the selected product_format$/ do
  page.should have_content(@pf.formatId)
end
