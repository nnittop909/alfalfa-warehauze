require 'rails_helper'

RSpec.describe "materials/edit", type: :view do
  before(:each) do
    @material = assign(:material, Material.create!(
      :description => "MyString",
      :unit => "MyString",
      :price => "MyString",
      :quantity => "MyString",
      :status => 1
    ))
  end

  it "renders the edit material form" do
    render

    assert_select "form[action=?][method=?]", material_path(@material), "post" do

      assert_select "input#material_description[name=?]", "material[description]"

      assert_select "input#material_unit[name=?]", "material[unit]"

      assert_select "input#material_price[name=?]", "material[price]"

      assert_select "input#material_quantity[name=?]", "material[quantity]"

      assert_select "input#material_status[name=?]", "material[status]"
    end
  end
end
