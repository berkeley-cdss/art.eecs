require 'rails_helper'

RSpec.describe "art/index", type: :view do
  before(:each) do
    assign(:art, [
      create(:art),
      create(:art)
    ])
  end

  it "renders a list of art" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new("Title"), count: 2
    assert_select cell_selector, text: Regexp.new("MyText"), count: 2
    assert_select cell_selector, text: Regexp.new("Created Location"), count: 2
    assert_select cell_selector, text: Regexp.new("Url"), count: 2
    assert_select cell_selector, text: Regexp.new("Classification"), count: 2
    assert_select cell_selector, text: Regexp.new(false.to_s), count: 2
  end
end
