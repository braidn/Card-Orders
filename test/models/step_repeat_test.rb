require "minitest_helper"

class StepRepeatTest < MiniTest::Rails::Model
  before do
    @step_repeat = StepRepeat.new
  end

  it "must be valid" do
    @step_repeat.valid?.must_equal true
  end

  it "must be a real test" do
    flunk "Need real tests"
  end

  # describe "when doing its thing" do
  #   it "must be interesting" do
  #     @step_repeat.blow_minds!
  #     @step_repeat.interesting?.must_equal true
  #   end
  # end
end