require 'rails_helper'

RSpec.describe "petty_cashes/edit", type: :view do
  before(:each) do
    @petty_cash = assign(:petty_cash, PettyCash.create!(
      :cash_on_hand => "9.99"
    ))
  end

  it "renders the edit petty_cash form" do
    render

    assert_select "form[action=?][method=?]", petty_cash_path(@petty_cash), "post" do

      assert_select "input#petty_cash_cash_on_hand[name=?]", "petty_cash[cash_on_hand]"
    end
  end
end
