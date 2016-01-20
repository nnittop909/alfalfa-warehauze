require 'rails_helper'

RSpec.describe "cash_sources/show", type: :view do
  before(:each) do
    @cash_source = assign(:cash_source, CashSource.create!(
      :amount => "9.99",
      :petty_cash => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(//)
  end
end
