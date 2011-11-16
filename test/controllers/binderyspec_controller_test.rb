require "minitest_helper"

class BinderyspecControllerTest < MiniTest::Rails::Controller
  setup do
    @binderyspec = binderyspecs(:one)
  end

  def test_index
    get :index
    assert_response :success
    assert_not_nil assigns(:binderyspecs)
  end

  def test_new
    get :new
    assert_response :success
  end

  def test_create
    assert_difference('Binderyspec.count') do
      post :create, binderyspec: @binderyspec.attributes
    end

    assert_redirected_to binderyspec_path(assigns(:binderyspec))
  end

  def test_show
    get :show, id: @binderyspec.to_param
    assert_response :success
  end

  def test_edit
    get :edit, id: @binderyspec.to_param
    assert_response :success
  end

  def test_update
    put :update, id: @binderyspec.to_param, binderyspec: @binderyspec.attributes
    assert_redirected_to binderyspec_path(assigns(:binderyspec))
  end

  def test_destroy
    assert_difference('Binderyspec.count', -1) do
      delete :destroy, id: @binderyspec.to_param
    end

    assert_redirected_to binderyspecs_path
  end
end
