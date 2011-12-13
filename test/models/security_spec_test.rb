require "minitest_helper"

class SecuritySpecTest < MiniTest::Rails::Model
  before do
    @security_spec = SecuritySpec.new
  end

  it "must be valid" do
    @security_spec.valid?.must_equal true
  end

  it "must be a real test" do
    flunk "Need real tests"
  end

  # describe "when doing its thing" do
  #   it "must be interesting" do
  #     @security_spec.blow_minds!
  #     @security_spec.interesting?.must_equal true
  #   end
  # end
end