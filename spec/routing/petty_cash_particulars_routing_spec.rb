require "rails_helper"

RSpec.describe PettyCashParticularsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/petty_cash_particulars").to route_to("petty_cash_particulars#index")
    end

    it "routes to #new" do
      expect(:get => "/petty_cash_particulars/new").to route_to("petty_cash_particulars#new")
    end

    it "routes to #show" do
      expect(:get => "/petty_cash_particulars/1").to route_to("petty_cash_particulars#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/petty_cash_particulars/1/edit").to route_to("petty_cash_particulars#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/petty_cash_particulars").to route_to("petty_cash_particulars#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/petty_cash_particulars/1").to route_to("petty_cash_particulars#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/petty_cash_particulars/1").to route_to("petty_cash_particulars#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/petty_cash_particulars/1").to route_to("petty_cash_particulars#destroy", :id => "1")
    end

  end
end
