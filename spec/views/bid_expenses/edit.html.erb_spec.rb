require 'rails_helper'

RSpec.describe "bid_expenses/edit", type: :view do
  before(:each) do
    @bid_expense = assign(:bid_expense, BidExpense.create!(
      :description => "MyString"
    ))
  end

  it "renders the edit bid_expense form" do
    render

    assert_select "form[action=?][method=?]", bid_expense_path(@bid_expense), "post" do

      assert_select "input#bid_expense_description[name=?]", "bid_expense[description]"
    end
  end
end
