require 'rails_helper'

RSpec.describe "schedules/edit", type: :view do
  before(:each) do
    @schedule = assign(:schedule, Schedule.create!(
      :project => nil,
      :equipment => nil,
      :status => 1
    ))
  end

  it "renders the edit schedule form" do
    render

    assert_select "form[action=?][method=?]", schedule_path(@schedule), "post" do

      assert_select "input#schedule_project_id[name=?]", "schedule[project_id]"

      assert_select "input#schedule_equipment_id[name=?]", "schedule[equipment_id]"

      assert_select "input#schedule_status[name=?]", "schedule[status]"
    end
  end
end
