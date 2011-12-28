require "minitest_helper"

class StepRepeatControllerTest < MiniTest::Rails::Controller
  setup do
    @step_repeat = step_repeats(:one)
  end

  it "must get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:step_repeats)
  end

  it "must get new" do
    get :new
    assert_response :success
  end

  it "must create step_repeat" do
    assert_difference('StepRepeat.count') do
      post :create, step_repeat: @step_repeat.attributes
    end

    assert_redirected_to step_repeat_path(assigns(:step_repeat))
  end

  it "must show step_repeat" do
    get :show, id: @step_repeat.to_param
    assert_response :success
  end

  it "must get edit" do
    get :edit, id: @step_repeat.to_param
    assert_response :success
  end

  it "must update step_repeat" do
    put :update, id: @step_repeat.to_param, step_repeat: @step_repeat.attributes
    assert_redirected_to step_repeat_path(assigns(:step_repeat))
  end

  it "must destroy step_repeat" do
    assert_difference('StepRepeat.count', -1) do
      delete :destroy, id: @step_repeat.to_param
    end

    assert_redirected_to step_repeats_path
  end
end
