require 'rails_helper'

RSpec.describe "locations/index", type: :view do
  before(:each) do
    assign(:locations, [
      Location.create!(
        :street => "Street",
        :brangay => "Brangay",
        :municipality => "Municipality",
        :province => "Province"
      ),
      Location.create!(
        :street => "Street",
        :brangay => "Brangay",
        :municipality => "Municipality",
        :province => "Province"
      )
    ])
  end

  it "renders a list of locations" do
    render
    assert_select "tr>td", :text => "Street".to_s, :count => 2
    assert_select "tr>td", :text => "Brangay".to_s, :count => 2
    assert_select "tr>td", :text => "Municipality".to_s, :count => 2
    assert_select "tr>td", :text => "Province".to_s, :count => 2
  end
end
