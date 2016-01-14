require 'rails_helper'

RSpec.describe "materials/new", type: :view do
  before(:each) do
    assign(:material, Material.new(
      :description => "MyString",
      :unit => "MyString",
      :price => "MyString",
      :quantity => "MyString",
      :status => 1
    ))
  end

  it "renders new material form" do
    render

    assert_select "form[action=?][method=?]", materials_path, "post" do

      assert_select "input#material_description[name=?]", "material[description]"

      assert_select "input#material_unit[name=?]", "material[unit]"

      assert_select "input#material_price[name=?]", "material[price]"

      assert_select "input#material_quantity[name=?]", "material[quantity]"

      assert_select "input#material_status[name=?]", "material[status]"
    end
  end
end
