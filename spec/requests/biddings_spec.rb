require 'rails_helper'

RSpec.describe "Biddings", type: :request do
  describe "GET /biddings" do
    it "works! (now write some real specs)" do
      get biddings_path
      expect(response).to have_http_status(200)
    end
  end
end
