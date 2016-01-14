require 'rails_helper'

RSpec.describe "operators/new", type: :view do
  before(:each) do
    assign(:operator, Operator.new(
      :equipment => nil,
      :first_name => "MyString",
      :last_name => "MyString"
    ))
  end

  it "renders new operator form" do
    render

    assert_select "form[action=?][method=?]", operators_path, "post" do

      assert_select "input#operator_equipment_id[name=?]", "operator[equipment_id]"

      assert_select "input#operator_first_name[name=?]", "operator[first_name]"

      assert_select "input#operator_last_name[name=?]", "operator[last_name]"
    end
  end
end
