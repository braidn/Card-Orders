require "minitest_helper"

class CustomerControllerTest < MiniTest::Rails::Controller
  setup do
    @customer = customers(:one)
  end

  it "must get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:customers)
  end

  it "must get new" do
    get :new
    assert_response :success
  end

  it "must create customer" do
    assert_difference('Customer.count') do
      post :create, customer: @customer.attributes
    end

    assert_redirected_to customer_path(assigns(:customer))
  end

  it "must show customer" do
    get :show, id: @customer.to_param
    assert_response :success
  end

  it "must get edit" do
    get :edit, id: @customer.to_param
    assert_response :success
  end

  it "must update customer" do
    put :update, id: @customer.to_param, customer: @customer.attributes
    assert_redirected_to customer_path(assigns(:customer))
  end

  it "must destroy customer" do
    assert_difference('Customer.count', -1) do
      delete :destroy, id: @customer.to_param
    end

    assert_redirected_to customers_path
  end
end
