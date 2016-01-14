require 'rails_helper'

RSpec.describe "schedules/new", type: :view do
  before(:each) do
    assign(:schedule, Schedule.new(
      :project => nil,
      :equipment => nil,
      :status => 1
    ))
  end

  it "renders new schedule form" do
    render

    assert_select "form[action=?][method=?]", schedules_path, "post" do

      assert_select "input#schedule_project_id[name=?]", "schedule[project_id]"

      assert_select "input#schedule_equipment_id[name=?]", "schedule[equipment_id]"

      assert_select "input#schedule_status[name=?]", "schedule[status]"
    end
  end
end
