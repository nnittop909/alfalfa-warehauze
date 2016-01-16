require 'rails_helper'

RSpec.describe "petty_cashes/new", type: :view do
  before(:each) do
    assign(:petty_cash, PettyCash.new(
      :cash_recipient => "MyString",
      :purpose => "MyString",
      :cash_in => "9.99",
      :cash_out => "9.99"
    ))
  end

  it "renders new petty_cash form" do
    render

    assert_select "form[action=?][method=?]", petty_cashes_path, "post" do

      assert_select "input#petty_cash_cash_recipient[name=?]", "petty_cash[cash_recipient]"

      assert_select "input#petty_cash_purpose[name=?]", "petty_cash[purpose]"

      assert_select "input#petty_cash_cash_in[name=?]", "petty_cash[cash_in]"

      assert_select "input#petty_cash_cash_out[name=?]", "petty_cash[cash_out]"
    end
  end
end
