require 'rails_helper'

RSpec.describe "particulars/index", type: :view do
  before(:each) do
    assign(:particulars, [
      Particular.create!(
        :petty_cash => nil,
        :description => "Description",
        :amount => "9.99"
      ),
      Particular.create!(
        :petty_cash => nil,
        :description => "Description",
        :amount => "9.99"
      )
    ])
  end

  it "renders a list of particulars" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
