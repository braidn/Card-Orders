require "minitest_helper"

class BillingsHelperTest < MiniTest::Rails::Helper
  before do
    @helper= BillingsHelper.new
  end

  it "must be a real test" do
    flunk "Need real tests"
  end
end
