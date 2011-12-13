require "minitest_helper"

class MachineIdStandardTest < MiniTest::Rails::Model
  before do
    @machine_id_standard = MachineIdStandard.new
  end

  it "must be valid" do
    @machine_id_standard.valid?.must_equal true
  end

  it "must be a real test" do
    flunk "Need real tests"
  end

  # describe "when doing its thing" do
  #   it "must be interesting" do
  #     @machine_id_standard.blow_minds!
  #     @machine_id_standard.interesting?.must_equal true
  #   end
  # end
end