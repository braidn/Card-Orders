require "minitest_helper"

class RfidInlayCategoryControllerTest < MiniTest::Rails::Controller
  setup do
    @rfid_inlay_category = rfid_inlay_categories(:one)
  end

  def test_index
    get :index
    assert_response :success
    assert_not_nil assigns(:rfid_inlay_categories)
  end

  def test_new
    get :new
    assert_response :success
  end

  def test_create
    assert_difference('RfidInlayCategory.count') do
      post :create, rfid_inlay_category: @rfid_inlay_category.attributes
    end

    assert_redirected_to rfid_inlay_category_path(assigns(:rfid_inlay_category))
  end

  def test_show
    get :show, id: @rfid_inlay_category.to_param
    assert_response :success
  end

  def test_edit
    get :edit, id: @rfid_inlay_category.to_param
    assert_response :success
  end

  def test_update
    put :update, id: @rfid_inlay_category.to_param, rfid_inlay_category: @rfid_inlay_category.attributes
    assert_redirected_to rfid_inlay_category_path(assigns(:rfid_inlay_category))
  end

  def test_destroy
    assert_difference('RfidInlayCategory.count', -1) do
      delete :destroy, id: @rfid_inlay_category.to_param
    end

    assert_redirected_to rfid_inlay_categories_path
  end
end
