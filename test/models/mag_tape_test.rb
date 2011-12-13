require "minitest_helper"

class MagTapeTest < MiniTest::Rails::Model
  before do
    @mag_tape = MagTape.new
  end

  it "must be valid" do
    @mag_tape.valid?.must_equal true
  end

  it "must be a real test" do
    flunk "Need real tests"
  end

  # describe "when doing its thing" do
  #   it "must be interesting" do
  #     @mag_tape.blow_minds!
  #     @mag_tape.interesting?.must_equal true
  #   end
  # end
end