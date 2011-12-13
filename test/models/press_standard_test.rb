require "minitest_helper"

class PressStandardTest < MiniTest::Rails::Model
  before do
    @press_standard = PressStandard.new
  end

  it "must be valid" do
    @press_standard.valid?.must_equal true
  end

  it "must be a real test" do
    flunk "Need real tests"
  end

  # describe "when doing its thing" do
  #   it "must be interesting" do
  #     @press_standard.blow_minds!
  #     @press_standard.interesting?.must_equal true
  #   end
  # end
end