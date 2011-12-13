require "minitest_helper"

class ProofCostControllerTest < MiniTest::Rails::Controller
  setup do
    @proof_cost = proof_costs(:one)
  end

  it "must get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:proof_costs)
  end

  it "must get new" do
    get :new
    assert_response :success
  end

  it "must create proof_cost" do
    assert_difference('ProofCost.count') do
      post :create, proof_cost: @proof_cost.attributes
    end

    assert_redirected_to proof_cost_path(assigns(:proof_cost))
  end

  it "must show proof_cost" do
    get :show, id: @proof_cost.to_param
    assert_response :success
  end

  it "must get edit" do
    get :edit, id: @proof_cost.to_param
    assert_response :success
  end

  it "must update proof_cost" do
    put :update, id: @proof_cost.to_param, proof_cost: @proof_cost.attributes
    assert_redirected_to proof_cost_path(assigns(:proof_cost))
  end

  it "must destroy proof_cost" do
    assert_difference('ProofCost.count', -1) do
      delete :destroy, id: @proof_cost.to_param
    end

    assert_redirected_to proof_costs_path
  end
end
