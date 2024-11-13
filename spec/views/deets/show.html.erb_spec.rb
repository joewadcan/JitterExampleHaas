require 'rails_helper'

RSpec.describe "deets/show", type: :view do
  before(:each) do
    assign(:deet, Deet.create!(
      content: "Content"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Content/)
  end
end
