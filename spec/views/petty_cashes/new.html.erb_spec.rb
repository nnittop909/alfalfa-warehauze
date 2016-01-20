require 'rails_helper'

RSpec.describe "petty_cashes/new", type: :view do
  before(:each) do
    assign(:petty_cash, PettyCash.new(
      :cash_on_hand => "9.99"
    ))
  end

  it "renders new petty_cash form" do
    render

    assert_select "form[action=?][method=?]", petty_cashes_path, "post" do

      assert_select "input#petty_cash_cash_on_hand[name=?]", "petty_cash[cash_on_hand]"
    end
  end
end
