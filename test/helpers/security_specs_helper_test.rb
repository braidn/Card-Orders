require "minitest_helper"

class SecuritySpecsHelperTest < MiniTest::Rails::Helper
  before do
    @helper= SecuritySpecsHelper.new
  end

  it "must be a real test" do
    flunk "Need real tests"
  end
end
