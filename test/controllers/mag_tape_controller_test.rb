require "minitest_helper"

class MagTapeControllerTest < MiniTest::Rails::Controller
  setup do
    @mag_tape = mag_tapes(:one)
  end

  it "must get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mag_tapes)
  end

  it "must get new" do
    get :new
    assert_response :success
  end

  it "must create mag_tape" do
    assert_difference('MagTape.count') do
      post :create, mag_tape: @mag_tape.attributes
    end

    assert_redirected_to mag_tape_path(assigns(:mag_tape))
  end

  it "must show mag_tape" do
    get :show, id: @mag_tape.to_param
    assert_response :success
  end

  it "must get edit" do
    get :edit, id: @mag_tape.to_param
    assert_response :success
  end

  it "must update mag_tape" do
    put :update, id: @mag_tape.to_param, mag_tape: @mag_tape.attributes
    assert_redirected_to mag_tape_path(assigns(:mag_tape))
  end

  it "must destroy mag_tape" do
    assert_difference('MagTape.count', -1) do
      delete :destroy, id: @mag_tape.to_param
    end

    assert_redirected_to mag_tapes_path
  end
end
