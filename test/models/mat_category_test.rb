require "minitest_helper"

class MatCategoryTest < MiniTest::Rails::Model
  before do
    @mat_category = MatCategory.new
  end

  it "must be valid" do
    @mat_category.valid?.must_equal true
  end

  it "must be a real test" do
    flunk "Need real tests"
  end

  # describe "when doing its thing" do
  #   it "must be interesting" do
  #     @mat_category.blow_minds!
  #     @mat_category.interesting?.must_equal true
  #   end
  # end
end