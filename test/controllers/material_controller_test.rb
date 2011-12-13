require "minitest_helper"

class MaterialControllerTest < MiniTest::Rails::Controller
  setup do
    @material = materials(:one)
  end

  it "must get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:materials)
  end

  it "must get new" do
    get :new
    assert_response :success
  end

  it "must create material" do
    assert_difference('Material.count') do
      post :create, material: @material.attributes
    end

    assert_redirected_to material_path(assigns(:material))
  end

  it "must show material" do
    get :show, id: @material.to_param
    assert_response :success
  end

  it "must get edit" do
    get :edit, id: @material.to_param
    assert_response :success
  end

  it "must update material" do
    put :update, id: @material.to_param, material: @material.attributes
    assert_redirected_to material_path(assigns(:material))
  end

  it "must destroy material" do
    assert_difference('Material.count', -1) do
      delete :destroy, id: @material.to_param
    end

    assert_redirected_to materials_path
  end
end
