require 'rails_helper'

RSpec.describe "particulars/new", type: :view do
  before(:each) do
    assign(:particular, Particular.new(
      :petty_cash => nil,
      :description => "MyString",
      :amount => "9.99"
    ))
  end

  it "renders new particular form" do
    render

    assert_select "form[action=?][method=?]", particulars_path, "post" do

      assert_select "input#particular_petty_cash_id[name=?]", "particular[petty_cash_id]"

      assert_select "input#particular_description[name=?]", "particular[description]"

      assert_select "input#particular_amount[name=?]", "particular[amount]"
    end
  end
end
