require 'rails_helper'

RSpec.describe "cash_sources/new", type: :view do
  before(:each) do
    assign(:cash_source, CashSource.new(
      :amount => "9.99",
      :petty_cash => nil
    ))
  end

  it "renders new cash_source form" do
    render

    assert_select "form[action=?][method=?]", cash_sources_path, "post" do

      assert_select "input#cash_source_amount[name=?]", "cash_source[amount]"

      assert_select "input#cash_source_petty_cash_id[name=?]", "cash_source[petty_cash_id]"
    end
  end
end
