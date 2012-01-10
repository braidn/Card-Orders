require 'spec_helper'

describe "forgotten_users/index" do
  before(:each) do
    assign(:forgotten_users, [
      stub_model(ForgottenUser,
        :username => "Username",
        :hash => "Hash"
      ),
      stub_model(ForgottenUser,
        :username => "Username",
        :hash => "Hash"
      )
    ])
  end

  it "renders a list of forgotten_users" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Username".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Hash".to_s, :count => 2
  end
end
