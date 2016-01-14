require 'rails_helper'

RSpec.describe "equipment/edit", type: :view do
  before(:each) do
    @equipment = assign(:equipment, Equipment.create!(
      :description => "MyString",
      :plate_number => "MyString",
      :project => nil
    ))
  end

  it "renders the edit equipment form" do
    render

    assert_select "form[action=?][method=?]", equipment_path(@equipment), "post" do

      assert_select "input#equipment_description[name=?]", "equipment[description]"

      assert_select "input#equipment_plate_number[name=?]", "equipment[plate_number]"

      assert_select "input#equipment_project_id[name=?]", "equipment[project_id]"
    end
  end
end
