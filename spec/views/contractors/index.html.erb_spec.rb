require 'rails_helper'

RSpec.describe "contractors/index", type: :view do
  before(:each) do
    assign(:contractors, [
      Contractor.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :company => "Company",
        :position => "Position"
      ),
      Contractor.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :company => "Company",
        :position => "Position"
      )
    ])
  end

  it "renders a list of contractors" do
    render
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Company".to_s, :count => 2
    assert_select "tr>td", :text => "Position".to_s, :count => 2
  end
end
