require "minitest_helper"

class StepRepeatsHelperTest < MiniTest::Rails::Helper
  before do
    @helper= StepRepeatsHelper.new
  end

  it "must be a real test" do
    flunk "Need real tests"
  end
end
