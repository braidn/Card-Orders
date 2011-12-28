require "minitest_helper"

class CustomerTest < MiniTest::Rails::Model
  before do
    @customer = Customer.new
  end

  it "must be valid" do
    @customer.valid?.must_equal true
  end

  it "must be a real test" do
    flunk "Need real tests"
  end

  # describe "when doing its thing" do
  #   it "must be interesting" do
  #     @customer.blow_minds!
  #     @customer.interesting?.must_equal true
  #   end
  # end
end