require "minitest_helper"

class DietypeControllerTest < MiniTest::Rails::Controller
  setup do
    @dietype = dietypes(:one)
  end

  def test_index
    get :index
    assert_response :success
    assert_not_nil assigns(:dietypes)
  end

  def test_new
    get :new
    assert_response :success
  end

  def test_create
    assert_difference('Dietype.count') do
      post :create, dietype: @dietype.attributes
    end

    assert_redirected_to dietype_path(assigns(:dietype))
  end

  def test_show
    get :show, id: @dietype.to_param
    assert_response :success
  end

  def test_edit
    get :edit, id: @dietype.to_param
    assert_response :success
  end

  def test_update
    put :update, id: @dietype.to_param, dietype: @dietype.attributes
    assert_redirected_to dietype_path(assigns(:dietype))
  end

  def test_destroy
    assert_difference('Dietype.count', -1) do
      delete :destroy, id: @dietype.to_param
    end

    assert_redirected_to dietypes_path
  end
end
