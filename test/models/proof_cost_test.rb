require "minitest_helper"

class ProofCostTest < MiniTest::Rails::Model
  before do
    @proof_cost = ProofCost.new
  end

  it "must be valid" do
    @proof_cost.valid?.must_equal true
  end

  it "must be a real test" do
    flunk "Need real tests"
  end

  # describe "when doing its thing" do
  #   it "must be interesting" do
  #     @proof_cost.blow_minds!
  #     @proof_cost.interesting?.must_equal true
  #   end
  # end
end