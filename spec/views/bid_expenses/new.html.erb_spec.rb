require 'rails_helper'

RSpec.describe "bid_expenses/new", type: :view do
  before(:each) do
    assign(:bid_expense, BidExpense.new(
      :description => "MyString"
    ))
  end

  it "renders new bid_expense form" do
    render

    assert_select "form[action=?][method=?]", bid_expenses_path, "post" do

      assert_select "input#bid_expense_description[name=?]", "bid_expense[description]"
    end
  end
end
