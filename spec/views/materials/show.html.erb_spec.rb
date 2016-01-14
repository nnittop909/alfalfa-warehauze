require 'rails_helper'

RSpec.describe "materials/show", type: :view do
  before(:each) do
    @material = assign(:material, Material.create!(
      :description => "Description",
      :unit => "Unit",
      :price => "Price",
      :quantity => "Quantity",
      :status => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/Unit/)
    expect(rendered).to match(/Price/)
    expect(rendered).to match(/Quantity/)
    expect(rendered).to match(/1/)
  end
end
