require 'rails_helper'

RSpec.describe "bidder_amounts/new", type: :view do
  before(:each) do
    assign(:bidder_amount, BidderAmount.new(
      :amount => "MyString"
    ))
  end

  it "renders new bidder_amount form" do
    render

    assert_select "form[action=?][method=?]", bidder_amounts_path, "post" do

      assert_select "input#bidder_amount_amount[name=?]", "bidder_amount[amount]"
    end
  end
end
