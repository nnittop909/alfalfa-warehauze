require 'rails_helper'

RSpec.describe "BidCollections", type: :request do
  describe "GET /bid_collections" do
    it "works! (now write some real specs)" do
      get bid_collections_path
      expect(response).to have_http_status(200)
    end
  end
end
