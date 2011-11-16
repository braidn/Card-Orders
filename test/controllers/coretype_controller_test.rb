require "minitest_helper"

class CoretypeControllerTest < MiniTest::Rails::Controller
  setup do
    @coretype = coretypes(:one)
  end

  def test_index
    get :index
    assert_response :success
    assert_not_nil assigns(:coretypes)
  end

  def test_new
    get :new
    assert_response :success
  end

  def test_create
    assert_difference('Coretype.count') do
      post :create, coretype: @coretype.attributes
    end

    assert_redirected_to coretype_path(assigns(:coretype))
  end

  def test_show
    get :show, id: @coretype.to_param
    assert_response :success
  end

  def test_edit
    get :edit, id: @coretype.to_param
    assert_response :success
  end

  def test_update
    put :update, id: @coretype.to_param, coretype: @coretype.attributes
    assert_redirected_to coretype_path(assigns(:coretype))
  end

  def test_destroy
    assert_difference('Coretype.count', -1) do
      delete :destroy, id: @coretype.to_param
    end

    assert_redirected_to coretypes_path
  end
end
