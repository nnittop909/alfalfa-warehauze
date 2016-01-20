require 'rails_helper'

RSpec.describe "bid_collections/edit", type: :view do
  before(:each) do
    @bid_collection = assign(:bid_collection, BidCollection.create!(
      :bid_amount => nil,
      :billing_name => "MyString",
      :amount => "9.99"
    ))
  end

  it "renders the edit bid_collection form" do
    render

    assert_select "form[action=?][method=?]", bid_collection_path(@bid_collection), "post" do

      assert_select "input#bid_collection_bid_amount_id[name=?]", "bid_collection[bid_amount_id]"

      assert_select "input#bid_collection_billing_name[name=?]", "bid_collection[billing_name]"

      assert_select "input#bid_collection_amount[name=?]", "bid_collection[amount]"
    end
  end
end
