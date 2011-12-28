require "minitest_helper"

class ToolingSpecificationsHelperTest < MiniTest::Rails::Helper
  before do
    @helper= ToolingSpecificationsHelper.new
  end

  it "must be a real test" do
    flunk "Need real tests"
  end
end
