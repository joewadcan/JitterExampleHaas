require 'rails_helper'

RSpec.describe "splunks/new", type: :view do
  before(:each) do
    assign(:splunk, Splunk.new(
      content: "MyString"
    ))
  end

  it "renders new splunk form" do
    render

    assert_select "form[action=?][method=?]", splunks_path, "post" do

      assert_select "input[name=?]", "splunk[content]"
    end
  end
end
