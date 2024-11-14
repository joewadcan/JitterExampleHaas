require 'rails_helper'

RSpec.describe "splunks/edit", type: :view do
  let(:splunk) {
    Splunk.create!(
      content: "MyString"
    )
  }

  before(:each) do
    assign(:splunk, splunk)
  end

  it "renders the edit splunk form" do
    render

    assert_select "form[action=?][method=?]", splunk_path(splunk), "post" do

      assert_select "input[name=?]", "splunk[content]"
    end
  end
end
