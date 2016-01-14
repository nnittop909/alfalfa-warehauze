require 'rails_helper'

RSpec.describe "equipment/index", type: :view do
  before(:each) do
    assign(:equipment, [
      Equipment.create!(
        :description => "Description",
        :plate_number => "Plate Number",
        :project => nil
      ),
      Equipment.create!(
        :description => "Description",
        :plate_number => "Plate Number",
        :project => nil
      )
    ])
  end

  it "renders a list of equipment" do
    render
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "Plate Number".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
