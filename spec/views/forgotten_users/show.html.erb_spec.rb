require 'spec_helper'

describe "forgotten_users/show" do
  before(:each) do
    @forgotten_user = assign(:forgotten_user, stub_model(ForgottenUser,
      :username => "Username",
      :hash => "Hash"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Username/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Hash/)
  end
end
