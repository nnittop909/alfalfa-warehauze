require 'rails_helper'

RSpec.describe "bid_expenses/show", type: :view do
  before(:each) do
    @bid_expense = assign(:bid_expense, BidExpense.create!(
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Description/)
  end
end
