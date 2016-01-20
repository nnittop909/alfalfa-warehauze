require "rails_helper"

RSpec.describe BidCollectionsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/bid_collections").to route_to("bid_collections#index")
    end

    it "routes to #new" do
      expect(:get => "/bid_collections/new").to route_to("bid_collections#new")
    end

    it "routes to #show" do
      expect(:get => "/bid_collections/1").to route_to("bid_collections#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/bid_collections/1/edit").to route_to("bid_collections#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/bid_collections").to route_to("bid_collections#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/bid_collections/1").to route_to("bid_collections#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/bid_collections/1").to route_to("bid_collections#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/bid_collections/1").to route_to("bid_collections#destroy", :id => "1")
    end

  end
end
