require "minitest_helper"

class FoiltypeControllerTest < MiniTest::Rails::Controller
  setup do
    @foiltype = foiltypes(:one)
  end

  def test_index
    get :index
    assert_response :success
    assert_not_nil assigns(:foiltypes)
  end

  def test_new
    get :new
    assert_response :success
  end

  def test_create
    assert_difference('Foiltype.count') do
      post :create, foiltype: @foiltype.attributes
    end

    assert_redirected_to foiltype_path(assigns(:foiltype))
  end

  def test_show
    get :show, id: @foiltype.to_param
    assert_response :success
  end

  def test_edit
    get :edit, id: @foiltype.to_param
    assert_response :success
  end

  def test_update
    put :update, id: @foiltype.to_param, foiltype: @foiltype.attributes
    assert_redirected_to foiltype_path(assigns(:foiltype))
  end

  def test_destroy
    assert_difference('Foiltype.count', -1) do
      delete :destroy, id: @foiltype.to_param
    end

    assert_redirected_to foiltypes_path
  end
end
