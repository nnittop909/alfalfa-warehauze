require 'rails_helper'

RSpec.describe "biddings/index", type: :view do
  before(:each) do
    assign(:biddings, [
      Bidding.create!(
        :project => nil,
        :bid_expense => nil
      ),
      Bidding.create!(
        :project => nil,
        :bid_expense => nil
      )
    ])
  end

  it "renders a list of biddings" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
