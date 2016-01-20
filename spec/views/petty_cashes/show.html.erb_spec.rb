require 'rails_helper'

RSpec.describe "petty_cashes/show", type: :view do
  before(:each) do
    @petty_cash = assign(:petty_cash, PettyCash.create!(
      :cash_on_hand => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/9.99/)
  end
end
