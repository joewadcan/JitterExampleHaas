require 'rails_helper'

RSpec.describe "jeets/new", type: :view do
  before(:each) do
    assign(:jeet, Jeet.new(
      content: "MyString"
    ))
  end

  it "renders new jeet form" do
    render

    assert_select "form[action=?][method=?]", jeets_path, "post" do

      assert_select "input[name=?]", "jeet[content]"
    end
  end
end
