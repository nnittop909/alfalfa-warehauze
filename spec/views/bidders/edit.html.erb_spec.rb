require 'rails_helper'

RSpec.describe "bidders/edit", type: :view do
  before(:each) do
    @bidder = assign(:bidder, Bidder.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit bidder form" do
    render

    assert_select "form[action=?][method=?]", bidder_path(@bidder), "post" do

      assert_select "input#bidder_name[name=?]", "bidder[name]"
    end
  end
end
