require "minitest_helper"

class LaminateControllerTest < MiniTest::Rails::Controller
  setup do
    @laminate = laminates(:one)
  end

  def test_index
    get :index
    assert_response :success
    assert_not_nil assigns(:laminates)
  end

  def test_new
    get :new
    assert_response :success
  end

  def test_create
    assert_difference('Laminate.count') do
      post :create, laminate: @laminate.attributes
    end

    assert_redirected_to laminate_path(assigns(:laminate))
  end

  def test_show
    get :show, id: @laminate.to_param
    assert_response :success
  end

  def test_edit
    get :edit, id: @laminate.to_param
    assert_response :success
  end

  def test_update
    put :update, id: @laminate.to_param, laminate: @laminate.attributes
    assert_redirected_to laminate_path(assigns(:laminate))
  end

  def test_destroy
    assert_difference('Laminate.count', -1) do
      delete :destroy, id: @laminate.to_param
    end

    assert_redirected_to laminates_path
  end
end
