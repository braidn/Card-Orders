require "minitest_helper"

class ShippingControllerTest < MiniTest::Rails::Controller
  setup do
    @shipping = shippings(:one)
  end

  it "must get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shippings)
  end

  it "must get new" do
    get :new
    assert_response :success
  end

  it "must create shipping" do
    assert_difference('Shipping.count') do
      post :create, shipping: @shipping.attributes
    end

    assert_redirected_to shipping_path(assigns(:shipping))
  end

  it "must show shipping" do
    get :show, id: @shipping.to_param
    assert_response :success
  end

  it "must get edit" do
    get :edit, id: @shipping.to_param
    assert_response :success
  end

  it "must update shipping" do
    put :update, id: @shipping.to_param, shipping: @shipping.attributes
    assert_redirected_to shipping_path(assigns(:shipping))
  end

  it "must destroy shipping" do
    assert_difference('Shipping.count', -1) do
      delete :destroy, id: @shipping.to_param
    end

    assert_redirected_to shippings_path
  end
end
