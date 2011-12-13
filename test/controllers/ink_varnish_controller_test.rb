require "minitest_helper"

class InkVarnishControllerTest < MiniTest::Rails::Controller
  setup do
    @ink_varnish = ink_varnishes(:one)
  end

  def test_index
    get :index
    assert_response :success
    assert_not_nil assigns(:ink_varnishes)
  end

  def test_new
    get :new
    assert_response :success
  end

  def test_create
    assert_difference('InkVarnish.count') do
      post :create, ink_varnish: @ink_varnish.attributes
    end

    assert_redirected_to ink_varnish_path(assigns(:ink_varnish))
  end

  def test_show
    get :show, id: @ink_varnish.to_param
    assert_response :success
  end

  def test_edit
    get :edit, id: @ink_varnish.to_param
    assert_response :success
  end

  def test_update
    put :update, id: @ink_varnish.to_param, ink_varnish: @ink_varnish.attributes
    assert_redirected_to ink_varnish_path(assigns(:ink_varnish))
  end

  def test_destroy
    assert_difference('InkVarnish.count', -1) do
      delete :destroy, id: @ink_varnish.to_param
    end

    assert_redirected_to ink_varnishes_path
  end
end
