require 'rails_helper'

RSpec.describe "material_expenses/index", type: :view do
  before(:each) do
    assign(:material_expenses, [
      MaterialExpense.create!(
        :project_id => 1,
        :contractor_id => 2,
        :description => "Description",
        :unit => "Unit",
        :quantity => 3,
        :price => "9.99"
      ),
      MaterialExpense.create!(
        :project_id => 1,
        :contractor_id => 2,
        :description => "Description",
        :unit => "Unit",
        :quantity => 3,
        :price => "9.99"
      )
    ])
  end

  it "renders a list of material_expenses" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "Unit".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
