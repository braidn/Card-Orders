require "minitest_helper"

class InkpmscodeControllerTest < MiniTest::Rails::Controller
  setup do
    @inkpmscode = inkpmscodes(:one)
  end

  def test_index
    get :index
    assert_response :success
    assert_not_nil assigns(:inkpmscodes)
  end

  def test_new
    get :new
    assert_response :success
  end

  def test_create
    assert_difference('Inkpmscode.count') do
      post :create, inkpmscode: @inkpmscode.attributes
    end

    assert_redirected_to inkpmscode_path(assigns(:inkpmscode))
  end

  def test_show
    get :show, id: @inkpmscode.to_param
    assert_response :success
  end

  def test_edit
    get :edit, id: @inkpmscode.to_param
    assert_response :success
  end

  def test_update
    put :update, id: @inkpmscode.to_param, inkpmscode: @inkpmscode.attributes
    assert_redirected_to inkpmscode_path(assigns(:inkpmscode))
  end

  def test_destroy
    assert_difference('Inkpmscode.count', -1) do
      delete :destroy, id: @inkpmscode.to_param
    end

    assert_redirected_to inkpmscodes_path
  end
end
