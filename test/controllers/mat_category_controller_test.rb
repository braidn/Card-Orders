require "minitest_helper"

class MatCategoryControllerTest < MiniTest::Rails::Controller
  setup do
    @mat_category = mat_categories(:one)
  end

  it "must get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mat_categories)
  end

  it "must get new" do
    get :new
    assert_response :success
  end

  it "must create mat_category" do
    assert_difference('MatCategory.count') do
      post :create, mat_category: @mat_category.attributes
    end

    assert_redirected_to mat_category_path(assigns(:mat_category))
  end

  it "must show mat_category" do
    get :show, id: @mat_category.to_param
    assert_response :success
  end

  it "must get edit" do
    get :edit, id: @mat_category.to_param
    assert_response :success
  end

  it "must update mat_category" do
    put :update, id: @mat_category.to_param, mat_category: @mat_category.attributes
    assert_redirected_to mat_category_path(assigns(:mat_category))
  end

  it "must destroy mat_category" do
    assert_difference('MatCategory.count', -1) do
      delete :destroy, id: @mat_category.to_param
    end

    assert_redirected_to mat_categories_path
  end
end
