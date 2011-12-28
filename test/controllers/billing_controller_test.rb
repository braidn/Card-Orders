require "minitest_helper"

class BillingControllerTest < MiniTest::Rails::Controller
  setup do
    @billing = billings(:one)
  end

  it "must get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:billings)
  end

  it "must get new" do
    get :new
    assert_response :success
  end

  it "must create billing" do
    assert_difference('Billing.count') do
      post :create, billing: @billing.attributes
    end

    assert_redirected_to billing_path(assigns(:billing))
  end

  it "must show billing" do
    get :show, id: @billing.to_param
    assert_response :success
  end

  it "must get edit" do
    get :edit, id: @billing.to_param
    assert_response :success
  end

  it "must update billing" do
    put :update, id: @billing.to_param, billing: @billing.attributes
    assert_redirected_to billing_path(assigns(:billing))
  end

  it "must destroy billing" do
    assert_difference('Billing.count', -1) do
      delete :destroy, id: @billing.to_param
    end

    assert_redirected_to billings_path
  end
end
