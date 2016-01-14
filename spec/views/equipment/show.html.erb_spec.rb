require 'rails_helper'

RSpec.describe "equipment/show", type: :view do
  before(:each) do
    @equipment = assign(:equipment, Equipment.create!(
      :description => "Description",
      :plate_number => "Plate Number",
      :project => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/Plate Number/)
    expect(rendered).to match(//)
  end
end
