require 'rails_helper'

RSpec.describe "jeets/show", type: :view do
  before(:each) do
    assign(:jeet, Jeet.create!(
      content: "Content"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Content/)
  end
end
