require "minitest_helper"

class CompanyControllerTest < MiniTest::Rails::Controller
  setup do
    @company = companies(:one)
  end

  def test_index
    get :index
    assert_response :success
    assert_not_nil assigns(:companies)
  end

  def test_new
    get :new
    assert_response :success
  end

  def test_create
    assert_difference('Company.count') do
      post :create, company: @company.attributes
    end

    assert_redirected_to company_path(assigns(:company))
  end

  def test_show
    get :show, id: @company.to_param
    assert_response :success
  end

  def test_edit
    get :edit, id: @company.to_param
    assert_response :success
  end

  def test_update
    put :update, id: @company.to_param, company: @company.attributes
    assert_redirected_to company_path(assigns(:company))
  end

  def test_destroy
    assert_difference('Company.count', -1) do
      delete :destroy, id: @company.to_param
    end

    assert_redirected_to companies_path
  end
end
