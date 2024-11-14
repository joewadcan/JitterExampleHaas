require 'rails_helper'

RSpec.describe "splunks/show", type: :view do
  before(:each) do
    assign(:splunk, Splunk.create!(
      content: "Content"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Content/)
  end
end
