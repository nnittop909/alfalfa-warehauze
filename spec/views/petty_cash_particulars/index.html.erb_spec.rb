require 'rails_helper'

RSpec.describe "petty_cash_particulars/index", type: :view do
  before(:each) do
    assign(:petty_cash_particulars, [
      PettyCashParticular.create!(
        :particular => "Particular",
        :quantity => 1,
        :unit => "Unit",
        :amount => "9.99",
        :petty_cash => nil
      ),
      PettyCashParticular.create!(
        :particular => "Particular",
        :quantity => 1,
        :unit => "Unit",
        :amount => "9.99",
        :petty_cash => nil
      )
    ])
  end

  it "renders a list of petty_cash_particulars" do
    render
    assert_select "tr>td", :text => "Particular".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Unit".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
