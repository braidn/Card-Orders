require "minitest_helper"

class PressStandardControllerTest < MiniTest::Rails::Controller
  setup do
    @press_standard = press_standards(:one)
  end

  it "must get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:press_standards)
  end

  it "must get new" do
    get :new
    assert_response :success
  end

  it "must create press_standard" do
    assert_difference('PressStandard.count') do
      post :create, press_standard: @press_standard.attributes
    end

    assert_redirected_to press_standard_path(assigns(:press_standard))
  end

  it "must show press_standard" do
    get :show, id: @press_standard.to_param
    assert_response :success
  end

  it "must get edit" do
    get :edit, id: @press_standard.to_param
    assert_response :success
  end

  it "must update press_standard" do
    put :update, id: @press_standard.to_param, press_standard: @press_standard.attributes
    assert_redirected_to press_standard_path(assigns(:press_standard))
  end

  it "must destroy press_standard" do
    assert_difference('PressStandard.count', -1) do
      delete :destroy, id: @press_standard.to_param
    end

    assert_redirected_to press_standards_path
  end
end
