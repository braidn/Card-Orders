require "minitest_helper"

class ProductFormatTest < MiniTest::Rails::Model
  before do
    @product_format = ProductFormat.new
  end

  it "must be valid" do
    @product_format.valid?.must_equal true
  end

  it "must be a real test" do
    flunk "Need real tests"
  end

  # describe "when doing its thing" do
  #   it "must be interesting" do
  #     @product_format.blow_minds!
  #     @product_format.interesting?.must_equal true
  #   end
  # end
end