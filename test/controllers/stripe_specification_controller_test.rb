require "minitest_helper"

class StripeSpecificationControllerTest < MiniTest::Rails::Controller
  setup do
    @stripe_specification = stripe_specifications(:one)
  end

  it "must get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:stripe_specifications)
  end

  it "must get new" do
    get :new
    assert_response :success
  end

  it "must create stripe_specification" do
    assert_difference('StripeSpecification.count') do
      post :create, stripe_specification: @stripe_specification.attributes
    end

    assert_redirected_to stripe_specification_path(assigns(:stripe_specification))
  end

  it "must show stripe_specification" do
    get :show, id: @stripe_specification.to_param
    assert_response :success
  end

  it "must get edit" do
    get :edit, id: @stripe_specification.to_param
    assert_response :success
  end

  it "must update stripe_specification" do
    put :update, id: @stripe_specification.to_param, stripe_specification: @stripe_specification.attributes
    assert_redirected_to stripe_specification_path(assigns(:stripe_specification))
  end

  it "must destroy stripe_specification" do
    assert_difference('StripeSpecification.count', -1) do
      delete :destroy, id: @stripe_specification.to_param
    end

    assert_redirected_to stripe_specifications_path
  end
end
