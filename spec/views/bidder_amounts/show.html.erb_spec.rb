require 'rails_helper'

RSpec.describe "bidder_amounts/show", type: :view do
  before(:each) do
    @bidder_amount = assign(:bidder_amount, BidderAmount.create!(
      :amount => "Amount"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Amount/)
  end
end
