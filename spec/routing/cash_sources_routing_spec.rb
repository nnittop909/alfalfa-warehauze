require "rails_helper"

RSpec.describe CashSourcesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/cash_sources").to route_to("cash_sources#index")
    end

    it "routes to #new" do
      expect(:get => "/cash_sources/new").to route_to("cash_sources#new")
    end

    it "routes to #show" do
      expect(:get => "/cash_sources/1").to route_to("cash_sources#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/cash_sources/1/edit").to route_to("cash_sources#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/cash_sources").to route_to("cash_sources#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/cash_sources/1").to route_to("cash_sources#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/cash_sources/1").to route_to("cash_sources#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/cash_sources/1").to route_to("cash_sources#destroy", :id => "1")
    end

  end
end
