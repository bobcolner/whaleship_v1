require "spec_helper"

describe SignupBoxesController do
  describe "routing" do

    it "routes to #index" do
      get("/signup_boxes").should route_to("signup_boxes#index")
    end

    it "routes to #new" do
      get("/signup_boxes/new").should route_to("signup_boxes#new")
    end

    it "routes to #show" do
      get("/signup_boxes/1").should route_to("signup_boxes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/signup_boxes/1/edit").should route_to("signup_boxes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/signup_boxes").should route_to("signup_boxes#create")
    end

    it "routes to #update" do
      put("/signup_boxes/1").should route_to("signup_boxes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/signup_boxes/1").should route_to("signup_boxes#destroy", :id => "1")
    end

  end
end
