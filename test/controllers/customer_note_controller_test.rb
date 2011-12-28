require "minitest_helper"

class CustomerNoteControllerTest < MiniTest::Rails::Controller
  setup do
    @customer_note = customer_notes(:one)
  end

  def test_index
    get :index
    assert_response :success
    assert_not_nil assigns(:customer_notes)
  end

  def test_new
    get :new
    assert_response :success
  end

  def test_create
    assert_difference('CustomerNote.count') do
      post :create, customer_note: @customer_note.attributes
    end

    assert_redirected_to customer_note_path(assigns(:customer_note))
  end

  def test_show
    get :show, id: @customer_note.to_param
    assert_response :success
  end

  def test_edit
    get :edit, id: @customer_note.to_param
    assert_response :success
  end

  def test_update
    put :update, id: @customer_note.to_param, customer_note: @customer_note.attributes
    assert_redirected_to customer_note_path(assigns(:customer_note))
  end

  def test_destroy
    assert_difference('CustomerNote.count', -1) do
      delete :destroy, id: @customer_note.to_param
    end

    assert_redirected_to customer_notes_path
  end
end
