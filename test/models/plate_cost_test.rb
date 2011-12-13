require "minitest_helper"

class PlateCostTest < MiniTest::Rails::Model
  before do
    @plate_cost = PlateCost.new
  end

  it "must be valid" do
    @plate_cost.valid?.must_equal true
  end

  it "must be a real test" do
    flunk "Need real tests"
  end

  # describe "when doing its thing" do
  #   it "must be interesting" do
  #     @plate_cost.blow_minds!
  #     @plate_cost.interesting?.must_equal true
  #   end
  # end
end