require "minitest_helper"

class SalesTermTest < MiniTest::Rails::Model
  before do
    @sales_term = SalesTerm.new
  end

  it "must be valid" do
    @sales_term.valid?.must_equal true
  end

  it "must be a real test" do
    flunk "Need real tests"
  end

  # describe "when doing its thing" do
  #   it "must be interesting" do
  #     @sales_term.blow_minds!
  #     @sales_term.interesting?.must_equal true
  #   end
  # end
end