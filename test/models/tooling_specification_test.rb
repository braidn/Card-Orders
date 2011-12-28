require "minitest_helper"

class ToolingSpecificationTest < MiniTest::Rails::Model
  before do
    @tooling_specification = ToolingSpecification.new
  end

  it "must be valid" do
    @tooling_specification.valid?.must_equal true
  end

  it "must be a real test" do
    flunk "Need real tests"
  end

  # describe "when doing its thing" do
  #   it "must be interesting" do
  #     @tooling_specification.blow_minds!
  #     @tooling_specification.interesting?.must_equal true
  #   end
  # end
end