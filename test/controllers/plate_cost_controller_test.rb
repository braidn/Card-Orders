require "minitest_helper"

class PlateCostControllerTest < MiniTest::Rails::Controller
  setup do
    @plate_cost = plate_costs(:one)
  end

  it "must get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:plate_costs)
  end

  it "must get new" do
    get :new
    assert_response :success
  end

  it "must create plate_cost" do
    assert_difference('PlateCost.count') do
      post :create, plate_cost: @plate_cost.attributes
    end

    assert_redirected_to plate_cost_path(assigns(:plate_cost))
  end

  it "must show plate_cost" do
    get :show, id: @plate_cost.to_param
    assert_response :success
  end

  it "must get edit" do
    get :edit, id: @plate_cost.to_param
    assert_response :success
  end

  it "must update plate_cost" do
    put :update, id: @plate_cost.to_param, plate_cost: @plate_cost.attributes
    assert_redirected_to plate_cost_path(assigns(:plate_cost))
  end

  it "must destroy plate_cost" do
    assert_difference('PlateCost.count', -1) do
      delete :destroy, id: @plate_cost.to_param
    end

    assert_redirected_to plate_costs_path
  end
end
