require "minitest_helper"

class MagInkTypeTest < MiniTest::Rails::Model
  before do
    @mag_ink_type = MagInkType.new
  end

  it "must be valid" do
    @mag_ink_type.valid?.must_equal true
  end

  it "must be a real test" do
    flunk "Need real tests"
  end

  # describe "when doing its thing" do
  #   it "must be interesting" do
  #     @mag_ink_type.blow_minds!
  #     @mag_ink_type.interesting?.must_equal true
  #   end
  # end
end