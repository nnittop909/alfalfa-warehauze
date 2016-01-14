require 'rails_helper'

RSpec.describe "locations/show", type: :view do
  before(:each) do
    @location = assign(:location, Location.create!(
      :street => "Street",
      :brangay => "Brangay",
      :municipality => "Municipality",
      :province => "Province"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Street/)
    expect(rendered).to match(/Brangay/)
    expect(rendered).to match(/Municipality/)
    expect(rendered).to match(/Province/)
  end
end
