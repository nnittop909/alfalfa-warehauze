require 'rails_helper'

RSpec.describe "EquipmentExpenses", type: :request do
  describe "GET /equipment_expenses" do
    it "works! (now write some real specs)" do
      get equipment_expenses_path
      expect(response).to have_http_status(200)
    end
  end
end
