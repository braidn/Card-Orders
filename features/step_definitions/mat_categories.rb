Given /^there is a mat_categories with "(.*?)" "(.*?)"$/ do |field, value|
  @mc = Fabricate(:mat_category, field => value)
  MatCategory.count.should == 1
end

When /^I fill in the mat_category form correctly$/ do
  fill_in("Material Category Description", :with => @mc.matCatDescription )
  fill_in("Material Category", :with => @mc.matCategory )
end

Then /^I am presented with the new mat_category$/ do
  MatCategory.count.should == 2
  page.should have_content(@mc.matCategory)
  current_path.should == mat_category_path(2)
end

When /^I fill in the mat_category form incorrectly$/ do
  fill_in("Material Category Description", :with => '')
end

Then /^I should see specific details about the selected mat_category$/ do
  page.should have_content(@mc.matCategory)
end
