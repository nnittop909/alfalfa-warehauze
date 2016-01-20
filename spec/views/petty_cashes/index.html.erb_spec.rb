require 'rails_helper'

RSpec.describe "petty_cashes/index", type: :view do
  before(:each) do
    assign(:petty_cashes, [
      PettyCash.create!(
        :cash_on_hand => "9.99"
      ),
      PettyCash.create!(
        :cash_on_hand => "9.99"
      )
    ])
  end

  it "renders a list of petty_cashes" do
    render
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
