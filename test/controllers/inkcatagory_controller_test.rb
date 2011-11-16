require "minitest_helper"

class InkcatagoryControllerTest < MiniTest::Rails::Controller
  setup do
    @inkcatagory = inkcatagories(:one)
  end

  def test_index
    get :index
    assert_response :success
    assert_not_nil assigns(:inkcatagories)
  end

  def test_new
    get :new
    assert_response :success
  end

  def test_create
    assert_difference('Inkcatagory.count') do
      post :create, inkcatagory: @inkcatagory.attributes
    end

    assert_redirected_to inkcatagory_path(assigns(:inkcatagory))
  end

  def test_show
    get :show, id: @inkcatagory.to_param
    assert_response :success
  end

  def test_edit
    get :edit, id: @inkcatagory.to_param
    assert_response :success
  end

  def test_update
    put :update, id: @inkcatagory.to_param, inkcatagory: @inkcatagory.attributes
    assert_redirected_to inkcatagory_path(assigns(:inkcatagory))
  end

  def test_destroy
    assert_difference('Inkcatagory.count', -1) do
      delete :destroy, id: @inkcatagory.to_param
    end

    assert_redirected_to inkcatagories_path
  end
end
