require 'rails_helper'

RSpec.describe "locations/new", type: :view do
  before(:each) do
    assign(:location, Location.new(
      :street => "MyString",
      :brangay => "MyString",
      :municipality => "MyString",
      :province => "MyString"
    ))
  end

  it "renders new location form" do
    render

    assert_select "form[action=?][method=?]", locations_path, "post" do

      assert_select "input#location_street[name=?]", "location[street]"

      assert_select "input#location_brangay[name=?]", "location[brangay]"

      assert_select "input#location_municipality[name=?]", "location[municipality]"

      assert_select "input#location_province[name=?]", "location[province]"
    end
  end
end
