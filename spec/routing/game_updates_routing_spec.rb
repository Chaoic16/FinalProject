require "spec_helper"

describe GameUpdatesController do
  describe "routing" do

    it "routes to #index" do
      get("/game_updates").should route_to("game_updates#index")
    end

    it "routes to #new" do
      get("/game_updates/new").should route_to("game_updates#new")
    end

    it "routes to #show" do
      get("/game_updates/1").should route_to("game_updates#show", :id => "1")
    end

    it "routes to #edit" do
      get("/game_updates/1/edit").should route_to("game_updates#edit", :id => "1")
    end

    it "routes to #create" do
      post("/game_updates").should route_to("game_updates#create")
    end

    it "routes to #update" do
      put("/game_updates/1").should route_to("game_updates#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/game_updates/1").should route_to("game_updates#destroy", :id => "1")
    end

  end
end
