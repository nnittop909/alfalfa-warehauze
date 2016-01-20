require 'rails_helper'

RSpec.describe "bid_collections/index", type: :view do
  before(:each) do
    assign(:bid_collections, [
      BidCollection.create!(
        :bid_amount => nil,
        :billing_name => "Billing Name",
        :amount => "9.99"
      ),
      BidCollection.create!(
        :bid_amount => nil,
        :billing_name => "Billing Name",
        :amount => "9.99"
      )
    ])
  end

  it "renders a list of bid_collections" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Billing Name".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
