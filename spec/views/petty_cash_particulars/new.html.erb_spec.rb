require 'rails_helper'

RSpec.describe "petty_cash_particulars/new", type: :view do
  before(:each) do
    assign(:petty_cash_particular, PettyCashParticular.new(
      :particular => "MyString",
      :quantity => 1,
      :unit => "MyString",
      :amount => "9.99",
      :petty_cash => nil
    ))
  end

  it "renders new petty_cash_particular form" do
    render

    assert_select "form[action=?][method=?]", petty_cash_particulars_path, "post" do

      assert_select "input#petty_cash_particular_particular[name=?]", "petty_cash_particular[particular]"

      assert_select "input#petty_cash_particular_quantity[name=?]", "petty_cash_particular[quantity]"

      assert_select "input#petty_cash_particular_unit[name=?]", "petty_cash_particular[unit]"

      assert_select "input#petty_cash_particular_amount[name=?]", "petty_cash_particular[amount]"

      assert_select "input#petty_cash_particular_petty_cash_id[name=?]", "petty_cash_particular[petty_cash_id]"
    end
  end
end
