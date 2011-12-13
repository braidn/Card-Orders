require "minitest_helper"

class RfidInlayTest < MiniTest::Rails::Model
  before do
    @rfid_inlay = RfidInlay.new
  end

  it "must be valid" do
    @rfid_inlay.valid?.must_equal true
  end

  it "must be a real test" do
    flunk "Need real tests"
  end

  # describe "when doing its thing" do
  #   it "must be interesting" do
  #     @rfid_inlay.blow_minds!
  #     @rfid_inlay.interesting?.must_equal true
  #   end
  # end
end