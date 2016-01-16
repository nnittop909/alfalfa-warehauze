require "rails_helper"

RSpec.describe PettyCashesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/petty_cashes").to route_to("petty_cashes#index")
    end

    it "routes to #new" do
      expect(:get => "/petty_cashes/new").to route_to("petty_cashes#new")
    end

    it "routes to #show" do
      expect(:get => "/petty_cashes/1").to route_to("petty_cashes#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/petty_cashes/1/edit").to route_to("petty_cashes#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/petty_cashes").to route_to("petty_cashes#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/petty_cashes/1").to route_to("petty_cashes#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/petty_cashes/1").to route_to("petty_cashes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/petty_cashes/1").to route_to("petty_cashes#destroy", :id => "1")
    end

  end
end
