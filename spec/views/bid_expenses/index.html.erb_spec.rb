require 'rails_helper'

RSpec.describe "bid_expenses/index", type: :view do
  before(:each) do
    assign(:bid_expenses, [
      BidExpense.create!(
        :description => "Description"
      ),
      BidExpense.create!(
        :description => "Description"
      )
    ])
  end

  it "renders a list of bid_expenses" do
    render
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
