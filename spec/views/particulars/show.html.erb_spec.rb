require 'rails_helper'

RSpec.describe "particulars/show", type: :view do
  before(:each) do
    @particular = assign(:particular, Particular.create!(
      :petty_cash => nil,
      :description => "Description",
      :amount => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/9.99/)
  end
end
