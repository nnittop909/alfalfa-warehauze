require 'rails_helper'

RSpec.describe "BidExpenses", type: :request do
  describe "GET /bid_expenses" do
    it "works! (now write some real specs)" do
      get bid_expenses_path
      expect(response).to have_http_status(200)
    end
  end
end
