require 'rails_helper'

RSpec.describe "biddings/show", type: :view do
  before(:each) do
    @bidding = assign(:bidding, Bidding.create!(
      :project => nil,
      :bid_expense => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
