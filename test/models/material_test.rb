require "minitest_helper"

class MaterialTest < MiniTest::Rails::Model
  before do
    @material = Material.new
  end

  it "must be valid" do
    @material.valid?.must_equal true
  end

  it "must be a real test" do
    flunk "Need real tests"
  end

  # describe "when doing its thing" do
  #   it "must be interesting" do
  #     @material.blow_minds!
  #     @material.interesting?.must_equal true
  #   end
  # end
end