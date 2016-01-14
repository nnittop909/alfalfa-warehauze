require 'rails_helper'

RSpec.describe "contractors/show", type: :view do
  before(:each) do
    @contractor = assign(:contractor, Contractor.create!(
      :first_name => "First Name",
      :last_name => "Last Name",
      :company => "Company",
      :position => "Position"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Company/)
    expect(rendered).to match(/Position/)
  end
end
