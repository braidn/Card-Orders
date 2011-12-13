require "minitest_helper"

class MagInkTypeControllerTest < MiniTest::Rails::Controller
  setup do
    @mag_ink_type = mag_ink_types(:one)
  end

  it "must get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mag_ink_types)
  end

  it "must get new" do
    get :new
    assert_response :success
  end

  it "must create mag_ink_type" do
    assert_difference('MagInkType.count') do
      post :create, mag_ink_type: @mag_ink_type.attributes
    end

    assert_redirected_to mag_ink_type_path(assigns(:mag_ink_type))
  end

  it "must show mag_ink_type" do
    get :show, id: @mag_ink_type.to_param
    assert_response :success
  end

  it "must get edit" do
    get :edit, id: @mag_ink_type.to_param
    assert_response :success
  end

  it "must update mag_ink_type" do
    put :update, id: @mag_ink_type.to_param, mag_ink_type: @mag_ink_type.attributes
    assert_redirected_to mag_ink_type_path(assigns(:mag_ink_type))
  end

  it "must destroy mag_ink_type" do
    assert_difference('MagInkType.count', -1) do
      delete :destroy, id: @mag_ink_type.to_param
    end

    assert_redirected_to mag_ink_types_path
  end
end
