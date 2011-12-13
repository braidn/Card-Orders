require "minitest_helper"

class MachineStripeStandardTest < MiniTest::Rails::Model
  before do
    @machine_stripe_standard = MachineStripeStandard.new
  end

  it "must be valid" do
    @machine_stripe_standard.valid?.must_equal true
  end

  it "must be a real test" do
    flunk "Need real tests"
  end

  # describe "when doing its thing" do
  #   it "must be interesting" do
  #     @machine_stripe_standard.blow_minds!
  #     @machine_stripe_standard.interesting?.must_equal true
  #   end
  # end
end