require 'rails_helper'

RSpec.describe "bidders/new", type: :view do
  before(:each) do
    assign(:bidder, Bidder.new(
      :name => "MyString"
    ))
  end

  it "renders new bidder form" do
    render

    assert_select "form[action=?][method=?]", bidders_path, "post" do

      assert_select "input#bidder_name[name=?]", "bidder[name]"
    end
  end
end
