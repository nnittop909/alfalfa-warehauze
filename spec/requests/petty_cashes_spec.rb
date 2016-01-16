require 'rails_helper'

RSpec.describe "PettyCashes", type: :request do
  describe "GET /petty_cashes" do
    it "works! (now write some real specs)" do
      get petty_cashes_path
      expect(response).to have_http_status(200)
    end
  end
end
