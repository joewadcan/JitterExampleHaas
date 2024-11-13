require 'rails_helper'

RSpec.describe "deets/edit", type: :view do
  let(:deet) {
    Deet.create!(
      content: "MyString"
    )
  }

  before(:each) do
    assign(:deet, deet)
  end

  it "renders the edit deet form" do
    render

    assert_select "form[action=?][method=?]", deet_path(deet), "post" do

      assert_select "input[name=?]", "deet[content]"
    end
  end
end
