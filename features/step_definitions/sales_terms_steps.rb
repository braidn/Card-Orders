Given /^there is a sales_terms with "(.*?)" "(.*?)"$/ do |field, value|
  @st = Fabricate(:sales_term, field => value)
  SalesTerm.count.should == 1
end

When /^I fill in the sales_terms form correctly$/ do
  fill_in("Discount Days", :with => @st.discountDays)
  fill_in("Discount Rate", :with => @st.discountRate)
  fill_in("Pay Days", :with => @st.payDays)
  fill_in("Sales Term Description", :with => @st.salesTermDescription)
  fill_in("Sales Term ID", :with => @st.salesTermId)
end

Then /^I am presented with the new sales_terms$/ do
  SalesTerm.count.should == 2
  page.should have_content(@st.salesTermId)
  current_path.should == sales_term_path(2)
end

When /^I fill in the sales_terms form incorrectly$/ do
  fill_in("Sales Term Description", :with => '')
end

Then /^I should see specific details about the selected sales_terms$/ do
  page.should have_content(@st.salesTermDescription)
end
