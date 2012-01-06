require "minitest_helper"

class AdhesiveControllerTest < MiniTest::Rails::Controller
  setup do
    @adhesife = FactoryGirl.create(:supertacky)
  end

  def test_index
    get :index
    assert_response :success
    assert_not_nil assigns(:adhesives)
  end

  def test_new
    get :new
    assert_response :success
  end

  def test_create
    assert_difference('Adhesive.count') do
      post :create, adhesife: @adhesife.attributes
    end

    assert_redirected_to adhesife_path(assigns(:adhesife))
  end

  def test_show
    get :show, id: @adhesife.to_param
    assert_response :success
  end

  def test_edit
    get :edit, id: @adhesife.to_param
    assert_response :success
  end

  def test_update
    put :update, id: @adhesife.to_param, adhesife: @adhesife.attributes
    assert_redirected_to adhesife_path(assigns(:adhesife))
  end

  def test_destroy
    assert_difference('Adhesive.count', -1) do
      delete :destroy, id: @adhesife.to_param
    end

    assert_redirected_to adhesives_path
  end
end
