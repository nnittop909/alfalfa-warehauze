require "rails_helper"

RSpec.describe MaterialExpensesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/material_expenses").to route_to("material_expenses#index")
    end

    it "routes to #new" do
      expect(:get => "/material_expenses/new").to route_to("material_expenses#new")
    end

    it "routes to #show" do
      expect(:get => "/material_expenses/1").to route_to("material_expenses#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/material_expenses/1/edit").to route_to("material_expenses#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/material_expenses").to route_to("material_expenses#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/material_expenses/1").to route_to("material_expenses#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/material_expenses/1").to route_to("material_expenses#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/material_expenses/1").to route_to("material_expenses#destroy", :id => "1")
    end

  end
end
