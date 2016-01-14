require 'rails_helper'

RSpec.describe "equipment_expenses/new", type: :view do
  before(:each) do
    assign(:equipment_expense, EquipmentExpense.new(
      :category => 1,
      :amount => "9.99",
      :equipment => nil
    ))
  end

  it "renders new equipment_expense form" do
    render

    assert_select "form[action=?][method=?]", equipment_expenses_path, "post" do

      assert_select "input#equipment_expense_category[name=?]", "equipment_expense[category]"

      assert_select "input#equipment_expense_amount[name=?]", "equipment_expense[amount]"

      assert_select "input#equipment_expense_equipment_id[name=?]", "equipment_expense[equipment_id]"
    end
  end
end
