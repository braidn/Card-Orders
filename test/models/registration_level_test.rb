require "minitest_helper"

class RegistrationLevelTest < MiniTest::Rails::Model
  before do
    @registration_level = RegistrationLevel.new
  end

  it "must be valid" do
    @registration_level.valid?.must_equal true
  end

  it "must be a real test" do
    flunk "Need real tests"
  end

  # describe "when doing its thing" do
  #   it "must be interesting" do
  #     @registration_level.blow_minds!
  #     @registration_level.interesting?.must_equal true
  #   end
  # end
end