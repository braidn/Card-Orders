Given /^there is a boxtype with boxtype "(.*?)"$/ do |stuff|
  @boxtype = Fabricate(:boxtype, :boxtype => stuff)
end

Given /^I am at the list of boxtypes$/ do
  visit(boxtypes_path)
end

When /^I fill in the boxtype form correctly$/ do
  fill_in("Box Id", :with => @boxtype.boxid)
  fill_in("Box Type", :with => @boxtype.boxtype)
end

Then /^I am presented with the new boxtype$/ do
  page.has_content?('Box Type')
  page.has_content?(@boxtype.boxtype)
end

When /^I fill in the boxtype form incorrectly$/ do
  fill_in("Box Id", :with => '')
  fill_in("Box Type", :with => '')
end

Then /^I should see specific details about the selected box type$/ do
  page.has_content?('Box Type')
  page.has_content?(@boxtype.boxtype)
end
