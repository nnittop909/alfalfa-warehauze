require 'rails_helper'

RSpec.describe "BidderAmounts", type: :request do
  describe "GET /bidder_amounts" do
    it "works! (now write some real specs)" do
      get bidder_amounts_path
      expect(response).to have_http_status(200)
    end
  end
end
