require "minitest_helper"

class MachineIdStandardControllerTest < MiniTest::Rails::Controller
  setup do
    @machine_id_standard = machine_id_standards(:one)
  end

  it "must get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:machine_id_standards)
  end

  it "must get new" do
    get :new
    assert_response :success
  end

  it "must create machine_id_standard" do
    assert_difference('MachineIdStandard.count') do
      post :create, machine_id_standard: @machine_id_standard.attributes
    end

    assert_redirected_to machine_id_standard_path(assigns(:machine_id_standard))
  end

  it "must show machine_id_standard" do
    get :show, id: @machine_id_standard.to_param
    assert_response :success
  end

  it "must get edit" do
    get :edit, id: @machine_id_standard.to_param
    assert_response :success
  end

  it "must update machine_id_standard" do
    put :update, id: @machine_id_standard.to_param, machine_id_standard: @machine_id_standard.attributes
    assert_redirected_to machine_id_standard_path(assigns(:machine_id_standard))
  end

  it "must destroy machine_id_standard" do
    assert_difference('MachineIdStandard.count', -1) do
      delete :destroy, id: @machine_id_standard.to_param
    end

    assert_redirected_to machine_id_standards_path
  end
end
