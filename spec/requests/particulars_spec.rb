require 'rails_helper'

RSpec.describe "Particulars", type: :request do
  describe "GET /particulars" do
    it "works! (now write some real specs)" do
      get particulars_path
      expect(response).to have_http_status(200)
    end
  end
end
