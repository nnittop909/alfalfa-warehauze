require 'rails_helper'

RSpec.describe "CashSources", type: :request do
  describe "GET /cash_sources" do
    it "works! (now write some real specs)" do
      get cash_sources_path
      expect(response).to have_http_status(200)
    end
  end
end
