require "minitest_helper"

class BinderyControllerTest < MiniTest::Rails::Controller
  setup do
    @bindery = binderies(:one)
  end

  def test_index
    get :index
    assert_response :success
    assert_not_nil assigns(:binderies)
  end

  def test_new
    get :new
    assert_response :success
  end

  def test_create
    assert_difference('Bindery.count') do
      post :create, bindery: @bindery.attributes
    end

    assert_redirected_to bindery_path(assigns(:bindery))
  end

  def test_show
    get :show, id: @bindery.to_param
    assert_response :success
  end

  def test_edit
    get :edit, id: @bindery.to_param
    assert_response :success
  end

  def test_update
    put :update, id: @bindery.to_param, bindery: @bindery.attributes
    assert_redirected_to bindery_path(assigns(:bindery))
  end

  def test_destroy
    assert_difference('Bindery.count', -1) do
      delete :destroy, id: @bindery.to_param
    end

    assert_redirected_to binderies_path
  end
end
