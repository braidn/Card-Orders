require "minitest_helper"

class StripeSpecificationTest < MiniTest::Rails::Model
  before do
    @stripe_specification = StripeSpecification.new
  end

  it "must be valid" do
    @stripe_specification.valid?.must_equal true
  end

  it "must be a real test" do
    flunk "Need real tests"
  end

  # describe "when doing its thing" do
  #   it "must be interesting" do
  #     @stripe_specification.blow_minds!
  #     @stripe_specification.interesting?.must_equal true
  #   end
  # end
end