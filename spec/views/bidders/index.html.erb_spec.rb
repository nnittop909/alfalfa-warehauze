require 'rails_helper'

RSpec.describe "bidders/index", type: :view do
  before(:each) do
    assign(:bidders, [
      Bidder.create!(
        :name => "Name"
      ),
      Bidder.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of bidders" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
