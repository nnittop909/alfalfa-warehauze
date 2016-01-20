require 'rails_helper'

RSpec.describe "particulars/edit", type: :view do
  before(:each) do
    @particular = assign(:particular, Particular.create!(
      :petty_cash => nil,
      :description => "MyString",
      :amount => "9.99"
    ))
  end

  it "renders the edit particular form" do
    render

    assert_select "form[action=?][method=?]", particular_path(@particular), "post" do

      assert_select "input#particular_petty_cash_id[name=?]", "particular[petty_cash_id]"

      assert_select "input#particular_description[name=?]", "particular[description]"

      assert_select "input#particular_amount[name=?]", "particular[amount]"
    end
  end
end
