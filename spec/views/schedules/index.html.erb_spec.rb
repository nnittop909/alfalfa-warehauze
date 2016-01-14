require 'rails_helper'

RSpec.describe "schedules/index", type: :view do
  before(:each) do
    assign(:schedules, [
      Schedule.create!(
        :project => nil,
        :equipment => nil,
        :status => 1
      ),
      Schedule.create!(
        :project => nil,
        :equipment => nil,
        :status => 1
      )
    ])
  end

  it "renders a list of schedules" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
