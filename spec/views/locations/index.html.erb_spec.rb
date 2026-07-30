require 'rails_helper'

RSpec.describe "locations/index", type: :view do
  before(:each) do
    assign(:locations, [
      Location.create!(
        name: "Location A",
        building_name: "Building Name"
      ),
      Location.create!(
        name: "Location B",
        building_name: "Building Name"
      )
    ])
  end

  it "renders a list of locations" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new("Location [AB]"), count: 2
    assert_select cell_selector, text: Regexp.new("Building Name"), count: 2
  end
end
