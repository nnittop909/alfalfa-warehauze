require "rails_helper"

RSpec.describe EquipmentExpensesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/equipment_expenses").to route_to("equipment_expenses#index")
    end

    it "routes to #new" do
      expect(:get => "/equipment_expenses/new").to route_to("equipment_expenses#new")
    end

    it "routes to #show" do
      expect(:get => "/equipment_expenses/1").to route_to("equipment_expenses#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/equipment_expenses/1/edit").to route_to("equipment_expenses#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/equipment_expenses").to route_to("equipment_expenses#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/equipment_expenses/1").to route_to("equipment_expenses#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/equipment_expenses/1").to route_to("equipment_expenses#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/equipment_expenses/1").to route_to("equipment_expenses#destroy", :id => "1")
    end

  end
end
