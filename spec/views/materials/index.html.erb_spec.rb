require 'rails_helper'

RSpec.describe "materials/index", type: :view do
  before(:each) do
    assign(:materials, [
      Material.create!(
        :description => "Description",
        :unit => "Unit",
        :price => "Price",
        :quantity => "Quantity",
        :status => 1
      ),
      Material.create!(
        :description => "Description",
        :unit => "Unit",
        :price => "Price",
        :quantity => "Quantity",
        :status => 1
      )
    ])
  end

  it "renders a list of materials" do
    render
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "Unit".to_s, :count => 2
    assert_select "tr>td", :text => "Price".to_s, :count => 2
    assert_select "tr>td", :text => "Quantity".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
