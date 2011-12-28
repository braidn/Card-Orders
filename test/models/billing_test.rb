require "minitest_helper"

class BillingTest < MiniTest::Rails::Model
  before do
    @billing = Billing.new
  end

  it "must be valid" do
    @billing.valid?.must_equal true
  end

  it "must be a real test" do
    flunk "Need real tests"
  end

  # describe "when doing its thing" do
  #   it "must be interesting" do
  #     @billing.blow_minds!
  #     @billing.interesting?.must_equal true
  #   end
  # end
end