require "minitest_helper"

class SkidTest < MiniTest::Rails::Model
  before do
    @skid = Skid.new
  end

  it "must be valid" do
    @skid.valid?.must_equal true
  end

  it "must be a real test" do
    flunk "Need real tests"
  end

  # describe "when doing its thing" do
  #   it "must be interesting" do
  #     @skid.blow_minds!
  #     @skid.interesting?.must_equal true
  #   end
  # end
end