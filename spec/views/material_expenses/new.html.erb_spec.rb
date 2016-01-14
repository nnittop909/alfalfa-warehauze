require 'rails_helper'

RSpec.describe "material_expenses/new", type: :view do
  before(:each) do
    assign(:material_expense, MaterialExpense.new(
      :project_id => 1,
      :contractor_id => 1,
      :description => "MyString",
      :unit => "MyString",
      :quantity => 1,
      :price => "9.99"
    ))
  end

  it "renders new material_expense form" do
    render

    assert_select "form[action=?][method=?]", material_expenses_path, "post" do

      assert_select "input#material_expense_project_id[name=?]", "material_expense[project_id]"

      assert_select "input#material_expense_contractor_id[name=?]", "material_expense[contractor_id]"

      assert_select "input#material_expense_description[name=?]", "material_expense[description]"

      assert_select "input#material_expense_unit[name=?]", "material_expense[unit]"

      assert_select "input#material_expense_quantity[name=?]", "material_expense[quantity]"

      assert_select "input#material_expense_price[name=?]", "material_expense[price]"
    end
  end
end
