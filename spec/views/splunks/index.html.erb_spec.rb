require 'rails_helper'

RSpec.describe "splunks/index", type: :view do
  before(:each) do
    assign(:splunks, [
      Splunk.create!(
        content: "Content"
      ),
      Splunk.create!(
        content: "Content"
      )
    ])
  end

  it "renders a list of splunks" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new("Content".to_s), count: 2
  end
end
