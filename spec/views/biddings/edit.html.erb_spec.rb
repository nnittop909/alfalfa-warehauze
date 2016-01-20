require 'rails_helper'

RSpec.describe "biddings/edit", type: :view do
  before(:each) do
    @bidding = assign(:bidding, Bidding.create!(
      :project => nil,
      :bid_expense => nil
    ))
  end

  it "renders the edit bidding form" do
    render

    assert_select "form[action=?][method=?]", bidding_path(@bidding), "post" do

      assert_select "input#bidding_project_id[name=?]", "bidding[project_id]"

      assert_select "input#bidding_bid_expense_id[name=?]", "bidding[bid_expense_id]"
    end
  end
end
