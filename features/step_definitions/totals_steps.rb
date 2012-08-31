Given /^there is a totals with "(.*?)" "(.*?)"$/ do |field, value|
  @total = Fabricate(:total, field => value)
  Total.count.should == 1
end

When /^I fill in the totals form correctly$/ do
  fill_in("Freight Cost", :with => @total.freight_cost_cents)
  fill_in("Quantity", :with => @total.quantity)
  check("Separate Freight")
  fill_in("Margin", :with => @total.margin)
  fill_in("Desired Per M", :with => @total.desired_m_cents)
  check("Selected")
  fill_in("Product ID", :with => @total.product_id)
end

Then /^I am presented with the new total$/ do
  Total.count.should == 2
  current_path.should == total_path(2)
  page.has_content?("Freight Cost")
end

When /^I fill in the totals form incorrectly$/ do
  fill_in("Quantity", :with => '')
  fill_in("Desired Per M", :with => '')
end

Then /^I should see specific details about the selected totals$/ do
  page.should have_content(@total.margin)
end
