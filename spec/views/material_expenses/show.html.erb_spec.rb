require 'rails_helper'

RSpec.describe "material_expenses/show", type: :view do
  before(:each) do
    @material_expense = assign(:material_expense, MaterialExpense.create!(
      :project_id => 1,
      :contractor_id => 2,
      :description => "Description",
      :unit => "Unit",
      :quantity => 3,
      :price => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/Unit/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/9.99/)
  end
end
