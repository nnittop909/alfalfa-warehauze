require 'rails_helper'

RSpec.describe "contractors/new", type: :view do
  before(:each) do
    assign(:contractor, Contractor.new(
      :first_name => "MyString",
      :last_name => "MyString",
      :company => "MyString",
      :position => "MyString"
    ))
  end

  it "renders new contractor form" do
    render

    assert_select "form[action=?][method=?]", contractors_path, "post" do

      assert_select "input#contractor_first_name[name=?]", "contractor[first_name]"

      assert_select "input#contractor_last_name[name=?]", "contractor[last_name]"

      assert_select "input#contractor_company[name=?]", "contractor[company]"

      assert_select "input#contractor_position[name=?]", "contractor[position]"
    end
  end
end
