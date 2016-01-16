require 'rails_helper'

RSpec.describe "petty_cash_particulars/show", type: :view do
  before(:each) do
    @petty_cash_particular = assign(:petty_cash_particular, PettyCashParticular.create!(
      :particular => "Particular",
      :quantity => 1,
      :unit => "Unit",
      :amount => "9.99",
      :petty_cash => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Particular/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Unit/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(//)
  end
end
