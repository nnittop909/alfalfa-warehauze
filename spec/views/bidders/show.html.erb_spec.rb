require 'rails_helper'

RSpec.describe "bidders/show", type: :view do
  before(:each) do
    @bidder = assign(:bidder, Bidder.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
