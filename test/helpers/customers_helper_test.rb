require "minitest_helper"

class CustomersHelperTest < MiniTest::Rails::Helper
  before do
    @helper= CustomersHelper.new
  end

  it "must be a real test" do
    flunk "Need real tests"
  end
end
