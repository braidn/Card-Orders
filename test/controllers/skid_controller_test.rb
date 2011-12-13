require "minitest_helper"

class SkidControllerTest < MiniTest::Rails::Controller
  setup do
    @skid = skids(:one)
  end

  it "must get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:skids)
  end

  it "must get new" do
    get :new
    assert_response :success
  end

  it "must create skid" do
    assert_difference('Skid.count') do
      post :create, skid: @skid.attributes
    end

    assert_redirected_to skid_path(assigns(:skid))
  end

  it "must show skid" do
    get :show, id: @skid.to_param
    assert_response :success
  end

  it "must get edit" do
    get :edit, id: @skid.to_param
    assert_response :success
  end

  it "must update skid" do
    put :update, id: @skid.to_param, skid: @skid.attributes
    assert_redirected_to skid_path(assigns(:skid))
  end

  it "must destroy skid" do
    assert_difference('Skid.count', -1) do
      delete :destroy, id: @skid.to_param
    end

    assert_redirected_to skids_path
  end
end
