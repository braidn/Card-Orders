require "minitest_helper"

class EncodingstandardControllerTest < MiniTest::Rails::Controller
  setup do
    @encodingstandard = encodingstandards(:one)
  end

  def test_index
    get :index
    assert_response :success
    assert_not_nil assigns(:encodingstandards)
  end

  def test_new
    get :new
    assert_response :success
  end

  def test_create
    assert_difference('Encodingstandard.count') do
      post :create, encodingstandard: @encodingstandard.attributes
    end

    assert_redirected_to encodingstandard_path(assigns(:encodingstandard))
  end

  def test_show
    get :show, id: @encodingstandard.to_param
    assert_response :success
  end

  def test_edit
    get :edit, id: @encodingstandard.to_param
    assert_response :success
  end

  def test_update
    put :update, id: @encodingstandard.to_param, encodingstandard: @encodingstandard.attributes
    assert_redirected_to encodingstandard_path(assigns(:encodingstandard))
  end

  def test_destroy
    assert_difference('Encodingstandard.count', -1) do
      delete :destroy, id: @encodingstandard.to_param
    end

    assert_redirected_to encodingstandards_path
  end
end
