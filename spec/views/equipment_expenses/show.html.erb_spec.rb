require 'rails_helper'

RSpec.describe "equipment_expenses/show", type: :view do
  before(:each) do
    @equipment_expense = assign(:equipment_expense, EquipmentExpense.create!(
      :category => 1,
      :amount => "9.99",
      :equipment => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(//)
  end
end
