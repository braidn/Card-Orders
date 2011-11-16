require "minitest_helper"

class FoilControllerTest < MiniTest::Rails::Controller
  setup do
    @foil = foils(:one)
  end

  def test_index
    get :index
    assert_response :success
    assert_not_nil assigns(:foils)
  end

  def test_new
    get :new
    assert_response :success
  end

  def test_create
    assert_difference('Foil.count') do
      post :create, foil: @foil.attributes
    end

    assert_redirected_to foil_path(assigns(:foil))
  end

  def test_show
    get :show, id: @foil.to_param
    assert_response :success
  end

  def test_edit
    get :edit, id: @foil.to_param
    assert_response :success
  end

  def test_update
    put :update, id: @foil.to_param, foil: @foil.attributes
    assert_redirected_to foil_path(assigns(:foil))
  end

  def test_destroy
    assert_difference('Foil.count', -1) do
      delete :destroy, id: @foil.to_param
    end

    assert_redirected_to foils_path
  end
end
