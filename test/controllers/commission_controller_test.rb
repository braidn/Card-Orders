require "minitest_helper"

class CommissionControllerTest < MiniTest::Rails::Controller
  setup do
    @commission = commissions(:one)
  end

  def test_index
    get :index
    assert_response :success
    assert_not_nil assigns(:commissions)
  end

  def test_new
    get :new
    assert_response :success
  end

  def test_create
    assert_difference('Commission.count') do
      post :create, commission: @commission.attributes
    end

    assert_redirected_to commission_path(assigns(:commission))
  end

  def test_show
    get :show, id: @commission.to_param
    assert_response :success
  end

  def test_edit
    get :edit, id: @commission.to_param
    assert_response :success
  end

  def test_update
    put :update, id: @commission.to_param, commission: @commission.attributes
    assert_redirected_to commission_path(assigns(:commission))
  end

  def test_destroy
    assert_difference('Commission.count', -1) do
      delete :destroy, id: @commission.to_param
    end

    assert_redirected_to commissions_path
  end
end
