require "minitest_helper"

class SalesRepTest < MiniTest::Rails::Model
  before do
    @sales_rep = SalesRep.new
  end

  it "must be valid" do
    @sales_rep.valid?.must_equal true
  end

  it "must be a real test" do
    flunk "Need real tests"
  end

  # describe "when doing its thing" do
  #   it "must be interesting" do
  #     @sales_rep.blow_minds!
  #     @sales_rep.interesting?.must_equal true
  #   end
  # end
end