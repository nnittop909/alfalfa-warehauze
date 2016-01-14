require 'rails_helper'

RSpec.describe "operators/index", type: :view do
  before(:each) do
    assign(:operators, [
      Operator.create!(
        :equipment => nil,
        :first_name => "First Name",
        :last_name => "Last Name"
      ),
      Operator.create!(
        :equipment => nil,
        :first_name => "First Name",
        :last_name => "Last Name"
      )
    ])
  end

  it "renders a list of operators" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
  end
end
