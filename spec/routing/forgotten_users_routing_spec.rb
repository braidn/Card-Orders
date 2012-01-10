require "spec_helper"

describe ForgottenUsersController do
  describe "routing" do

    it "routes to #index" do
      get("/forgotten_users").should route_to("forgotten_users#index")
    end

    it "routes to #new" do
      get("/forgotten_users/new").should route_to("forgotten_users#new")
    end

    it "routes to #show" do
      get("/forgotten_users/1").should route_to("forgotten_users#show", :id => "1")
    end

    it "routes to #edit" do
      get("/forgotten_users/1/edit").should route_to("forgotten_users#edit", :id => "1")
    end

    it "routes to #create" do
      post("/forgotten_users").should route_to("forgotten_users#create")
    end

    it "routes to #update" do
      put("/forgotten_users/1").should route_to("forgotten_users#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/forgotten_users/1").should route_to("forgotten_users#destroy", :id => "1")
    end

  end
end
