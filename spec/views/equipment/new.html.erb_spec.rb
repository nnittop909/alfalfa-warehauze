require 'rails_helper'

RSpec.describe "equipment/new", type: :view do
  before(:each) do
    assign(:equipment, Equipment.new(
      :description => "MyString",
      :plate_number => "MyString",
      :project => nil
    ))
  end

  it "renders new equipment form" do
    render

    assert_select "form[action=?][method=?]", equipment_index_path, "post" do

      assert_select "input#equipment_description[name=?]", "equipment[description]"

      assert_select "input#equipment_plate_number[name=?]", "equipment[plate_number]"

      assert_select "input#equipment_project_id[name=?]", "equipment[project_id]"
    end
  end
end
