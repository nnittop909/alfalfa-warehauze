require "rails_helper"

RSpec.describe BiddersController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/bidders").to route_to("bidders#index")
    end

    it "routes to #new" do
      expect(:get => "/bidders/new").to route_to("bidders#new")
    end

    it "routes to #show" do
      expect(:get => "/bidders/1").to route_to("bidders#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/bidders/1/edit").to route_to("bidders#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/bidders").to route_to("bidders#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/bidders/1").to route_to("bidders#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/bidders/1").to route_to("bidders#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/bidders/1").to route_to("bidders#destroy", :id => "1")
    end

  end
end
