require "minitest_helper"

class SalesRepControllerTest < MiniTest::Rails::Controller
  setup do
    @sales_rep = sales_reps(:one)
  end

  it "must get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sales_reps)
  end

  it "must get new" do
    get :new
    assert_response :success
  end

  it "must create sales_rep" do
    assert_difference('SalesRep.count') do
      post :create, sales_rep: @sales_rep.attributes
    end

    assert_redirected_to sales_rep_path(assigns(:sales_rep))
  end

  it "must show sales_rep" do
    get :show, id: @sales_rep.to_param
    assert_response :success
  end

  it "must get edit" do
    get :edit, id: @sales_rep.to_param
    assert_response :success
  end

  it "must update sales_rep" do
    put :update, id: @sales_rep.to_param, sales_rep: @sales_rep.attributes
    assert_redirected_to sales_rep_path(assigns(:sales_rep))
  end

  it "must destroy sales_rep" do
    assert_difference('SalesRep.count', -1) do
      delete :destroy, id: @sales_rep.to_param
    end

    assert_redirected_to sales_reps_path
  end
end
