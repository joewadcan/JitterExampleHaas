require 'rails_helper'

RSpec.describe "deets/index", type: :view do
  before(:each) do
    assign(:deets, [
      Deet.create!(
        content: "Content"
      ),
      Deet.create!(
        content: "Content"
      )
    ])
  end

  it "renders a list of deets" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new("Content".to_s), count: 2
  end
end
