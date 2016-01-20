require "rails_helper"

RSpec.describe ParticularsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/particulars").to route_to("particulars#index")
    end

    it "routes to #new" do
      expect(:get => "/particulars/new").to route_to("particulars#new")
    end

    it "routes to #show" do
      expect(:get => "/particulars/1").to route_to("particulars#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/particulars/1/edit").to route_to("particulars#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/particulars").to route_to("particulars#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/particulars/1").to route_to("particulars#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/particulars/1").to route_to("particulars#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/particulars/1").to route_to("particulars#destroy", :id => "1")
    end

  end
end
