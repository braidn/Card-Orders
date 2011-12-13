require "minitest_helper"

class MachineStripeStandardControllerTest < MiniTest::Rails::Controller
  setup do
    @machine_stripe_standard = machine_stripe_standards(:one)
  end

  it "must get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:machine_stripe_standards)
  end

  it "must get new" do
    get :new
    assert_response :success
  end

  it "must create machine_stripe_standard" do
    assert_difference('MachineStripeStandard.count') do
      post :create, machine_stripe_standard: @machine_stripe_standard.attributes
    end

    assert_redirected_to machine_stripe_standard_path(assigns(:machine_stripe_standard))
  end

  it "must show machine_stripe_standard" do
    get :show, id: @machine_stripe_standard.to_param
    assert_response :success
  end

  it "must get edit" do
    get :edit, id: @machine_stripe_standard.to_param
    assert_response :success
  end

  it "must update machine_stripe_standard" do
    put :update, id: @machine_stripe_standard.to_param, machine_stripe_standard: @machine_stripe_standard.attributes
    assert_redirected_to machine_stripe_standard_path(assigns(:machine_stripe_standard))
  end

  it "must destroy machine_stripe_standard" do
    assert_difference('MachineStripeStandard.count', -1) do
      delete :destroy, id: @machine_stripe_standard.to_param
    end

    assert_redirected_to machine_stripe_standards_path
  end
end
