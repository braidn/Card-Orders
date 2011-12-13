require "minitest_helper"

class ProductFormatControllerTest < MiniTest::Rails::Controller
  setup do
    @product_format = product_formats(:one)
  end

  it "must get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:product_formats)
  end

  it "must get new" do
    get :new
    assert_response :success
  end

  it "must create product_format" do
    assert_difference('ProductFormat.count') do
      post :create, product_format: @product_format.attributes
    end

    assert_redirected_to product_format_path(assigns(:product_format))
  end

  it "must show product_format" do
    get :show, id: @product_format.to_param
    assert_response :success
  end

  it "must get edit" do
    get :edit, id: @product_format.to_param
    assert_response :success
  end

  it "must update product_format" do
    put :update, id: @product_format.to_param, product_format: @product_format.attributes
    assert_redirected_to product_format_path(assigns(:product_format))
  end

  it "must destroy product_format" do
    assert_difference('ProductFormat.count', -1) do
      delete :destroy, id: @product_format.to_param
    end

    assert_redirected_to product_formats_path
  end
end
