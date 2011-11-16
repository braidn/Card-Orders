require "minitest_helper"

class BoxControllerTest < MiniTest::Rails::Controller
  setup do
    @box = boxes(:one)
  end

  def test_index
    get :index
    assert_response :success
    assert_not_nil assigns(:boxes)
  end

  def test_new
    get :new
    assert_response :success
  end

  def test_create
    assert_difference('Box.count') do
      post :create, box: @box.attributes
    end

    assert_redirected_to box_path(assigns(:box))
  end

  def test_show
    get :show, id: @box.to_param
    assert_response :success
  end

  def test_edit
    get :edit, id: @box.to_param
    assert_response :success
  end

  def test_update
    put :update, id: @box.to_param, box: @box.attributes
    assert_redirected_to box_path(assigns(:box))
  end

  def test_destroy
    assert_difference('Box.count', -1) do
      delete :destroy, id: @box.to_param
    end

    assert_redirected_to boxes_path
  end
end
