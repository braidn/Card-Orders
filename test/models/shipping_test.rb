require "minitest_helper"

class ShippingTest < MiniTest::Rails::Model
  before do
    @shipping = Shipping.new
  end

  it "must be valid" do
    @shipping.valid?.must_equal true
  end

  it "must be a real test" do
    flunk "Need real tests"
  end

  # describe "when doing its thing" do
  #   it "must be interesting" do
  #     @shipping.blow_minds!
  #     @shipping.interesting?.must_equal true
  #   end
  # end
end