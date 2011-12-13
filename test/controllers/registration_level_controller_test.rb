require "minitest_helper"

class RegistrationLevelControllerTest < MiniTest::Rails::Controller
  setup do
    @registration_level = registration_levels(:one)
  end

  it "must get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:registration_levels)
  end

  it "must get new" do
    get :new
    assert_response :success
  end

  it "must create registration_level" do
    assert_difference('RegistrationLevel.count') do
      post :create, registration_level: @registration_level.attributes
    end

    assert_redirected_to registration_level_path(assigns(:registration_level))
  end

  it "must show registration_level" do
    get :show, id: @registration_level.to_param
    assert_response :success
  end

  it "must get edit" do
    get :edit, id: @registration_level.to_param
    assert_response :success
  end

  it "must update registration_level" do
    put :update, id: @registration_level.to_param, registration_level: @registration_level.attributes
    assert_redirected_to registration_level_path(assigns(:registration_level))
  end

  it "must destroy registration_level" do
    assert_difference('RegistrationLevel.count', -1) do
      delete :destroy, id: @registration_level.to_param
    end

    assert_redirected_to registration_levels_path
  end
end
