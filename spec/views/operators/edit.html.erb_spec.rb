require 'rails_helper'

RSpec.describe "operators/edit", type: :view do
  before(:each) do
    @operator = assign(:operator, Operator.create!(
      :equipment => nil,
      :first_name => "MyString",
      :last_name => "MyString"
    ))
  end

  it "renders the edit operator form" do
    render

    assert_select "form[action=?][method=?]", operator_path(@operator), "post" do

      assert_select "input#operator_equipment_id[name=?]", "operator[equipment_id]"

      assert_select "input#operator_first_name[name=?]", "operator[first_name]"

      assert_select "input#operator_last_name[name=?]", "operator[last_name]"
    end
  end
end
