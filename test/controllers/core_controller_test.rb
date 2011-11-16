require "minitest_helper"

class CoreControllerTest < MiniTest::Rails::Controller
  setup do
    @core = cores(:one)
  end

  def test_index
    get :index
    assert_response :success
    assert_not_nil assigns(:cores)
  end

  def test_new
    get :new
    assert_response :success
  end

  def test_create
    assert_difference('Core.count') do
      post :create, core: @core.attributes
    end

    assert_redirected_to core_path(assigns(:core))
  end

  def test_show
    get :show, id: @core.to_param
    assert_response :success
  end

  def test_edit
    get :edit, id: @core.to_param
    assert_response :success
  end

  def test_update
    put :update, id: @core.to_param, core: @core.attributes
    assert_redirected_to core_path(assigns(:core))
  end

  def test_destroy
    assert_difference('Core.count', -1) do
      delete :destroy, id: @core.to_param
    end

    assert_redirected_to cores_path
  end
end
