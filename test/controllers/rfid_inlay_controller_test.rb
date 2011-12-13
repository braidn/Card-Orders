require "minitest_helper"

class RfidInlayControllerTest < MiniTest::Rails::Controller
  setup do
    @rfid_inlay = rfid_inlays(:one)
  end

  it "must get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rfid_inlays)
  end

  it "must get new" do
    get :new
    assert_response :success
  end

  it "must create rfid_inlay" do
    assert_difference('RfidInlay.count') do
      post :create, rfid_inlay: @rfid_inlay.attributes
    end

    assert_redirected_to rfid_inlay_path(assigns(:rfid_inlay))
  end

  it "must show rfid_inlay" do
    get :show, id: @rfid_inlay.to_param
    assert_response :success
  end

  it "must get edit" do
    get :edit, id: @rfid_inlay.to_param
    assert_response :success
  end

  it "must update rfid_inlay" do
    put :update, id: @rfid_inlay.to_param, rfid_inlay: @rfid_inlay.attributes
    assert_redirected_to rfid_inlay_path(assigns(:rfid_inlay))
  end

  it "must destroy rfid_inlay" do
    assert_difference('RfidInlay.count', -1) do
      delete :destroy, id: @rfid_inlay.to_param
    end

    assert_redirected_to rfid_inlays_path
  end
end
