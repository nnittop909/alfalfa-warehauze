require 'rails_helper'

RSpec.describe "bidder_amounts/edit", type: :view do
  before(:each) do
    @bidder_amount = assign(:bidder_amount, BidderAmount.create!(
      :amount => "MyString"
    ))
  end

  it "renders the edit bidder_amount form" do
    render

    assert_select "form[action=?][method=?]", bidder_amount_path(@bidder_amount), "post" do

      assert_select "input#bidder_amount_amount[name=?]", "bidder_amount[amount]"
    end
  end
end
