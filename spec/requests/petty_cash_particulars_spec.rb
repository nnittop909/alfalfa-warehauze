require 'rails_helper'

RSpec.describe "PettyCashParticulars", type: :request do
  describe "GET /petty_cash_particulars" do
    it "works! (now write some real specs)" do
      get petty_cash_particulars_path
      expect(response).to have_http_status(200)
    end
  end
end
