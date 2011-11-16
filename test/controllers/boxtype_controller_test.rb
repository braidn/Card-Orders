require "minitest_helper"

class BoxtypeControllerTest < MiniTest::Rails::Controller
  setup do
    @boxtype = boxtypes(:one)
  end

  def test_index
    get :index
    assert_response :success
    assert_not_nil assigns(:boxtypes)
  end

  def test_new
    get :new
    assert_response :success
  end

  def test_create
    assert_difference('Boxtype.count') do
      post :create, boxtype: @boxtype.attributes
    end

    assert_redirected_to boxtype_path(assigns(:boxtype))
  end

  def test_show
    get :show, id: @boxtype.to_param
    assert_response :success
  end

  def test_edit
    get :edit, id: @boxtype.to_param
    assert_response :success
  end

  def test_update
    put :update, id: @boxtype.to_param, boxtype: @boxtype.attributes
    assert_redirected_to boxtype_path(assigns(:boxtype))
  end

  def test_destroy
    assert_difference('Boxtype.count', -1) do
      delete :destroy, id: @boxtype.to_param
    end

    assert_redirected_to boxtypes_path
  end
end
