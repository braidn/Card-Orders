Given /^there is a box with boxtype "(.*?)"$/ do |stuff|
  @box = Fabricate(:box, :boxtype => stuff)
end

Given /^I am at the list of boxes$/ do
  visit(boxes_path)
end

When /^I fill in the box form correctly$/ do
  @cbox = Fabricate(:box)
  fill_in("Box Type", :with => @cbox.boxtype)
  fill_in("Boxes Per Skid", :with => @cbox.boxesperskid)
  fill_in("Caliper", :with => @cbox.caliper)
  fill_in("Cards Per Skid", :with => @cbox.cardsperskid)
  fill_in("Estimate Box Selection", :with => @cbox.estimateboxselection)
  fill_in("Height", :with => @cbox.height)
  fill_in("Inner Cost", :with => @cbox.innercost)
  fill_in("Inner Outer", :with => @cbox.innerouter)
  fill_in("Inner Qty", :with => @cbox.innerquantity)
  fill_in("Internal Description", :with => @cbox.internaldescription)
  fill_in("Length", :with => @cbox.length)
  fill_in("Main Customer", :with => @cbox.maincustomer)
  fill_in("Outer Cost", :with => @cbox.outercost)
  fill_in("Outer Qty", :with => @cbox.outerquantity)
  fill_in("Rows High", :with => @cbox.rowshigh)
  fill_in("Select Skid", :with => @cbox.selectskid)
  fill_in("Size", :with => @cbox.size)
  fill_in("Width", :with => @cbox.width)
end

Then /^I am presented with the new box$/ do
  page.has_content?(@cbox.boxtype)
end

When /^I fill in the box form incorrectly$/ do
  fill_in("Box Type", :with => "")
  fill_in("Boxes Per Skid", :with => "")
  fill_in("Cards Per Skid", :with => "")
  fill_in("Size", :with => "")
  fill_in("Length", :with => "")
  fill_in("Width", :with => "")
  fill_in("Height", :with => "")
  fill_in("Inner Cost", :with => "")
  fill_in("Outer Cost", :with => "")
end

Then /^I should see specific details about the selected box$/ do
  page.has_content?("Box Type")
  page.has_content?(@box.boxtype)
end
