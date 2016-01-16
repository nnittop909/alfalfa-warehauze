require 'rails_helper'

RSpec.describe "petty_cashes/show", type: :view do
  before(:each) do
    @petty_cash = assign(:petty_cash, PettyCash.create!(
      :cash_recipient => "Cash Recipient",
      :purpose => "Purpose",
      :cash_in => "9.99",
      :cash_out => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Cash Recipient/)
    expect(rendered).to match(/Purpose/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
  end
end
