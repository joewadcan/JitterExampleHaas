require 'rails_helper'

RSpec.describe "deets/new", type: :view do
  before(:each) do
    assign(:deet, Deet.new(
      content: "MyString"
    ))
  end

  it "renders new deet form" do
    render

    assert_select "form[action=?][method=?]", deets_path, "post" do

      assert_select "input[name=?]", "deet[content]"
    end
  end
end
