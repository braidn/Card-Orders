Given /^there is a commission with comrate "(.*?)"$/ do |commrate|
  @commission = Fabricate(:commission, :commrate => commrate)
end

Given /^I am at the list of commissions$/ do
  visit(commissions_path)
end

When /^I fill in the commission form correctly$/ do
  fill_in("Commission Rate", :with => @commission.commrate)
  fill_in("Profit Rate", :with => @commission.profitrate)
end

Then /^I am presented with the new commission$/ do
  current_path.should == commission_path(2)
  page.should have_content(@commission.commrate)
end

When /^I fill in the Commission form incorrectly$/ do
  fill_in("Commission Rate", :with => '')
  fill_in("Profit Rate", :with => '')
end

Then /^I should see specific details about the selected commission$/ do
  page.should have_content(@commission.commrate)
end
