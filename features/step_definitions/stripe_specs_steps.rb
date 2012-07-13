Given /^there is a stripe_specs with "(.*?)" "(.*?)"$/ do |field, value|
  @stripe = Fabricate(:stripe_specification, field => value)
  StripeSpecification.count.should == 1
end

When /^I fill in the stripe_specs form correctly$/ do
  fill_in("Design By", :with => @stripe.designBy)
  fill_in("Design Revision Date", :with => @stripe.designRevDate)
  fill_in("HT Mag Type ID", :with => @stripe.htMagTypeId)
  fill_in("Image File", :with => @stripe.imageFile)
  fill_in("Job Number", :with => @stripe.jobNumber)
  fill_in("Magnetic Stripe Comment", :with => @stripe.magneticStripeComment)
  fill_in("Magnetic Stripe ID", :with => @stripe.magneticStripeId)
  fill_in("Side To Stripe", :with => @stripe.sideToStripe)
  fill_in("Signal ISO", :with => @stripe.signalISO)
  fill_in("Signal Max", :with => @stripe.signalMax)
  fill_in("Signal Min", :with => @stripe.signalMin)
  fill_in("Spec Number", :with => @stripe.specNumber)
  fill_in("Stripe Across", :with => @stripe.stripeAcross)
  fill_in("Stripe Machine ID", :with => @stripe.stripeMachineId)
  fill_in("Stripe Position", :with => @stripe.stripePosition)
  fill_in("Stripe Position Max", :with => @stripe.stripePositionMax)
  fill_in("Stripe Position Min", :with => @stripe.stripePositionMin)
  fill_in("Stripe Specification ID", :with => @stripe.stripeSpecificationId)
  fill_in("Stripe Speed", :with => @stripe.stripeSpeed)
  fill_in("Stripe Type Min", :with => @stripe.stripeTypeMin)
  fill_in("Stripe Type Max", :with => @stripe.stripeTypeMax)
  fill_in("Stripe Width", :with => @stripe.stripeWidth)
  fill_in("Stripe Width Min", :with => @stripe.stripeWidthMin)
  fill_in("Stripe Width Max", :with => @stripe.stripeWidthMax)
end

Then /^I am presented with the new stripe_spec$/ do
  StripeSpecification.count.should == 2
  page.should have_content(@stripe.jobNumber)
  current_path.should == stripe_specification_path(2)
end

When /^I fill in the stripe_spec form incorrectly$/ do
  fill_in("Job Number", :with => '')
end

Then /^I should see specific details about the selected stripe_spec$/ do
  page.should have_content(@stripe.jobNumber)
end
