require 'rails_helper'

RSpec.describe "bidder_amounts/index", type: :view do
  before(:each) do
    assign(:bidder_amounts, [
      BidderAmount.create!(
        :amount => "Amount"
      ),
      BidderAmount.create!(
        :amount => "Amount"
      )
    ])
  end

  it "renders a list of bidder_amounts" do
    render
    assert_select "tr>td", :text => "Amount".to_s, :count => 2
  end
end
