Given /^there is a binderyspec with comment "(.*?)"$/ do |comment|
  @binderyspec = Fabricate(:binderyspec, :comment => comment)
end

Given /^I am at the list of binderyspecs$/ do
  visit binderyspecs_path
end

When /^I fill in the binderyspec form correctly$/ do
  @cbinderyspec = Fabricate(:binderyspec)
  fill_in("Cards Per Unit", :with => @cbinderyspec.cardsperunit)
  fill_in("Comment", :with => @cbinderyspec.comment)
  fill_in("Number of Persons", :with => @cbinderyspec.numberofpersons)
  fill_in("Quantity Per Hour", :with => @cbinderyspec.quantityperhour)
  fill_in("Unit Material Cost", :with => @cbinderyspec.unitmaterialcost)
  fill_in("Job Number", :with => @cbinderyspec.jobnumber)
  fill_in("New Box Required", :with => @cbinderyspec.newboxrequired)
  fill_in("Package Amoritize Quantity", :with => @cbinderyspec.packageamoritizequantity)
  fill_in("Package Comment", :with => @cbinderyspec.packagecomment)
  fill_in("Package Inner Box Id", :with => @cbinderyspec.packageinnerboxid)
  fill_in("Package Outer Box Id", :with => @cbinderyspec.packageouterboxid)
end

Then /^I am presented with the new binderyspec$/ do
  page.has_content?(@cbinderyspec.packagecomment)
end

When /^I fill in the binderyspec form incorrectly$/ do
  fill_in("Cards Per Unit", :with => '')
  fill_in("Quantity Per Hour", :with => '')
  fill_in("Unit Material Cost", :with => '')
  fill_in("Comment", :with => '')
  fill_in("Number of Persons", :with => '')
end

Then /^I should see specific details about the selected binderyspec$/ do
  page.has_content?("Cards Per Unit")
  page.has_content?(@binderyspec.comment)
end
