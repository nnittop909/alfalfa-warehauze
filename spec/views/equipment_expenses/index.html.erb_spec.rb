require 'rails_helper'

RSpec.describe "equipment_expenses/index", type: :view do
  before(:each) do
    assign(:equipment_expenses, [
      EquipmentExpense.create!(
        :category => 1,
        :amount => "9.99",
        :equipment => nil
      ),
      EquipmentExpense.create!(
        :category => 1,
        :amount => "9.99",
        :equipment => nil
      )
    ])
  end

  it "renders a list of equipment_expenses" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
