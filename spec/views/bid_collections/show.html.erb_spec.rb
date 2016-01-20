require 'rails_helper'

RSpec.describe "bid_collections/show", type: :view do
  before(:each) do
    @bid_collection = assign(:bid_collection, BidCollection.create!(
      :bid_amount => nil,
      :billing_name => "Billing Name",
      :amount => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Billing Name/)
    expect(rendered).to match(/9.99/)
  end
end
