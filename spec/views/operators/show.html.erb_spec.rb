require 'rails_helper'

RSpec.describe "operators/show", type: :view do
  before(:each) do
    @operator = assign(:operator, Operator.create!(
      :equipment => nil,
      :first_name => "First Name",
      :last_name => "Last Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
  end
end
