require 'rails_helper'

RSpec.describe "cash_sources/edit", type: :view do
  before(:each) do
    @cash_source = assign(:cash_source, CashSource.create!(
      :amount => "9.99",
      :petty_cash => nil
    ))
  end

  it "renders the edit cash_source form" do
    render

    assert_select "form[action=?][method=?]", cash_source_path(@cash_source), "post" do

      assert_select "input#cash_source_amount[name=?]", "cash_source[amount]"

      assert_select "input#cash_source_petty_cash_id[name=?]", "cash_source[petty_cash_id]"
    end
  end
end
