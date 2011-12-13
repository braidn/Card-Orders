require "minitest_helper"

class SalesTermControllerTest < MiniTest::Rails::Controller
  setup do
    @sales_term = sales_terms(:one)
  end

  it "must get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sales_terms)
  end

  it "must get new" do
    get :new
    assert_response :success
  end

  it "must create sales_term" do
    assert_difference('SalesTerm.count') do
      post :create, sales_term: @sales_term.attributes
    end

    assert_redirected_to sales_term_path(assigns(:sales_term))
  end

  it "must show sales_term" do
    get :show, id: @sales_term.to_param
    assert_response :success
  end

  it "must get edit" do
    get :edit, id: @sales_term.to_param
    assert_response :success
  end

  it "must update sales_term" do
    put :update, id: @sales_term.to_param, sales_term: @sales_term.attributes
    assert_redirected_to sales_term_path(assigns(:sales_term))
  end

  it "must destroy sales_term" do
    assert_difference('SalesTerm.count', -1) do
      delete :destroy, id: @sales_term.to_param
    end

    assert_redirected_to sales_terms_path
  end
end
