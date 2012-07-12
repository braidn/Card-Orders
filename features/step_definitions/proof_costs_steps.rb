Given /^there is a proof_cost with "(.*?)" "(.*?)"$/ do |field, value|
  @pc = Fabricate(:proof_cost, field => value)
  ProofCost.count.should == 1
end

When /^I fill in the proof_cost form correctly$/ do
  fill_in("Proof Cast ID", :with => @pc.proofCastId)
  fill_in("Proof Cost", :with => @pc.proofCost)
  fill_in("Proof Description", :with => @pc.proofDescription)
end

Then /^I am presented with the new proof_cost$/ do
  ProofCost.count.should == 2
  page.should have_content(@pc.proofDescription)
  current_path.should == proof_cost_path(2)
end

When /^I fill in the proof_cost form incorrectly$/ do
  fill_in("Proof Cast ID", :with => 'a')
  fill_in("Proof Description", :with => '')
end

Then /^I should see specific details about the selected proof_cost$/ do
  page.should have_content(@pc.proofDescription)
end
