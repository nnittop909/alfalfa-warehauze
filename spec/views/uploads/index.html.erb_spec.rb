require 'rails_helper'

RSpec.describe "uploads/index", type: :view do
  before(:each) do
    assign(:uploads, [
      Upload.create!(
        :project => nil
      ),
      Upload.create!(
        :project => nil
      )
    ])
  end

  it "renders a list of uploads" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
