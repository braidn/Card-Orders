require "minitest_helper"

class DieControllerTest < MiniTest::Rails::Controller
  setup do
    @dy = dies(:one)
  end

  def test_index
    get :index
    assert_response :success
    assert_not_nil assigns(:dies)
  end

  def test_new
    get :new
    assert_response :success
  end

  def test_create
    assert_difference('Die.count') do
      post :create, dy: @dy.attributes
    end

    assert_redirected_to dy_path(assigns(:dy))
  end

  def test_show
    get :show, id: @dy.to_param
    assert_response :success
  end

  def test_edit
    get :edit, id: @dy.to_param
    assert_response :success
  end

  def test_update
    put :update, id: @dy.to_param, dy: @dy.attributes
    assert_redirected_to dy_path(assigns(:dy))
  end

  def test_destroy
    assert_difference('Die.count', -1) do
      delete :destroy, id: @dy.to_param
    end

    assert_redirected_to dies_path
  end
end
