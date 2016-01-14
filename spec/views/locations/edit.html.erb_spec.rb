require 'rails_helper'

RSpec.describe "locations/edit", type: :view do
  before(:each) do
    @location = assign(:location, Location.create!(
      :street => "MyString",
      :brangay => "MyString",
      :municipality => "MyString",
      :province => "MyString"
    ))
  end

  it "renders the edit location form" do
    render

    assert_select "form[action=?][method=?]", location_path(@location), "post" do

      assert_select "input#location_street[name=?]", "location[street]"

      assert_select "input#location_brangay[name=?]", "location[brangay]"

      assert_select "input#location_municipality[name=?]", "location[municipality]"

      assert_select "input#location_province[name=?]", "location[province]"
    end
  end
end
