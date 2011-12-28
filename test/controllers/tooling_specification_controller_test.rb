require "minitest_helper"

class ToolingSpecificationControllerTest < MiniTest::Rails::Controller
  setup do
    @tooling_specification = tooling_specifications(:one)
  end

  it "must get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tooling_specifications)
  end

  it "must get new" do
    get :new
    assert_response :success
  end

  it "must create tooling_specification" do
    assert_difference('ToolingSpecification.count') do
      post :create, tooling_specification: @tooling_specification.attributes
    end

    assert_redirected_to tooling_specification_path(assigns(:tooling_specification))
  end

  it "must show tooling_specification" do
    get :show, id: @tooling_specification.to_param
    assert_response :success
  end

  it "must get edit" do
    get :edit, id: @tooling_specification.to_param
    assert_response :success
  end

  it "must update tooling_specification" do
    put :update, id: @tooling_specification.to_param, tooling_specification: @tooling_specification.attributes
    assert_redirected_to tooling_specification_path(assigns(:tooling_specification))
  end

  it "must destroy tooling_specification" do
    assert_difference('ToolingSpecification.count', -1) do
      delete :destroy, id: @tooling_specification.to_param
    end

    assert_redirected_to tooling_specifications_path
  end
end
