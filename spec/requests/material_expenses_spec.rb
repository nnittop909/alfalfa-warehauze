require 'rails_helper'

RSpec.describe "MaterialExpenses", type: :request do
  describe "GET /material_expenses" do
    it "works! (now write some real specs)" do
      get material_expenses_path
      expect(response).to have_http_status(200)
    end
  end
end
