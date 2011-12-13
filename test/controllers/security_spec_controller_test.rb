require "minitest_helper"

class SecuritySpecControllerTest < MiniTest::Rails::Controller
  setup do
    @security_spec = security_specs(:one)
  end

  it "must get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:security_specs)
  end

  it "must get new" do
    get :new
    assert_response :success
  end

  it "must create security_spec" do
    assert_difference('SecuritySpec.count') do
      post :create, security_spec: @security_spec.attributes
    end

    assert_redirected_to security_spec_path(assigns(:security_spec))
  end

  it "must show security_spec" do
    get :show, id: @security_spec.to_param
    assert_response :success
  end

  it "must get edit" do
    get :edit, id: @security_spec.to_param
    assert_response :success
  end

  it "must update security_spec" do
    put :update, id: @security_spec.to_param, security_spec: @security_spec.attributes
    assert_redirected_to security_spec_path(assigns(:security_spec))
  end

  it "must destroy security_spec" do
    assert_difference('SecuritySpec.count', -1) do
      delete :destroy, id: @security_spec.to_param
    end

    assert_redirected_to security_specs_path
  end
end
