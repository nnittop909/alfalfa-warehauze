require 'rails_helper'

RSpec.describe "equipment_expenses/edit", type: :view do
  before(:each) do
    @equipment_expense = assign(:equipment_expense, EquipmentExpense.create!(
      :category => 1,
      :amount => "9.99",
      :equipment => nil
    ))
  end

  it "renders the edit equipment_expense form" do
    render

    assert_select "form[action=?][method=?]", equipment_expense_path(@equipment_expense), "post" do

      assert_select "input#equipment_expense_category[name=?]", "equipment_expense[category]"

      assert_select "input#equipment_expense_amount[name=?]", "equipment_expense[amount]"

      assert_select "input#equipment_expense_equipment_id[name=?]", "equipment_expense[equipment_id]"
    end
  end
end
