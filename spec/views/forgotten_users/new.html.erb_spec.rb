require 'spec_helper'

describe "forgotten_users/new" do
  before(:each) do
    assign(:forgotten_user, stub_model(ForgottenUser,
      :username => "MyString",
      :hash => "MyString"
    ).as_new_record)
  end

  it "renders new forgotten_user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => forgotten_users_path, :method => "post" do
      assert_select "input#forgotten_user_username", :name => "forgotten_user[username]"
      assert_select "input#forgotten_user_hash", :name => "forgotten_user[hash]"
    end
  end
end
