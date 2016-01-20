require 'rails_helper'

RSpec.describe "bid_collections/new", type: :view do
  before(:each) do
    assign(:bid_collection, BidCollection.new(
      :bid_amount => nil,
      :billing_name => "MyString",
      :amount => "9.99"
    ))
  end

  it "renders new bid_collection form" do
    render

    assert_select "form[action=?][method=?]", bid_collections_path, "post" do

      assert_select "input#bid_collection_bid_amount_id[name=?]", "bid_collection[bid_amount_id]"

      assert_select "input#bid_collection_billing_name[name=?]", "bid_collection[billing_name]"

      assert_select "input#bid_collection_amount[name=?]", "bid_collection[amount]"
    end
  end
end
