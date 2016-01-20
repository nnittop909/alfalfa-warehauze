require 'rails_helper'

RSpec.describe "cash_sources/index", type: :view do
  before(:each) do
    assign(:cash_sources, [
      CashSource.create!(
        :amount => "9.99",
        :petty_cash => nil
      ),
      CashSource.create!(
        :amount => "9.99",
        :petty_cash => nil
      )
    ])
  end

  it "renders a list of cash_sources" do
    render
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
