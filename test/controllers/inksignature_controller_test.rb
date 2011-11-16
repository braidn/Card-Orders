require "minitest_helper"

class InksignatureControllerTest < MiniTest::Rails::Controller
  setup do
    @inksignature = inksignatures(:one)
  end

  def test_index
    get :index
    assert_response :success
    assert_not_nil assigns(:inksignatures)
  end

  def test_new
    get :new
    assert_response :success
  end

  def test_create
    assert_difference('Inksignature.count') do
      post :create, inksignature: @inksignature.attributes
    end

    assert_redirected_to inksignature_path(assigns(:inksignature))
  end

  def test_show
    get :show, id: @inksignature.to_param
    assert_response :success
  end

  def test_edit
    get :edit, id: @inksignature.to_param
    assert_response :success
  end

  def test_update
    put :update, id: @inksignature.to_param, inksignature: @inksignature.attributes
    assert_redirected_to inksignature_path(assigns(:inksignature))
  end

  def test_destroy
    assert_difference('Inksignature.count', -1) do
      delete :destroy, id: @inksignature.to_param
    end

    assert_redirected_to inksignatures_path
  end
end
