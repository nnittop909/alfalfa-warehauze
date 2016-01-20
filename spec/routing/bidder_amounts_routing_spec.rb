require "rails_helper"

RSpec.describe BidderAmountsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/bidder_amounts").to route_to("bidder_amounts#index")
    end

    it "routes to #new" do
      expect(:get => "/bidder_amounts/new").to route_to("bidder_amounts#new")
    end

    it "routes to #show" do
      expect(:get => "/bidder_amounts/1").to route_to("bidder_amounts#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/bidder_amounts/1/edit").to route_to("bidder_amounts#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/bidder_amounts").to route_to("bidder_amounts#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/bidder_amounts/1").to route_to("bidder_amounts#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/bidder_amounts/1").to route_to("bidder_amounts#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/bidder_amounts/1").to route_to("bidder_amounts#destroy", :id => "1")
    end

  end
end
