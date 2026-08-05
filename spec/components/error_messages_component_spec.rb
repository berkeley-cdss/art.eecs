require "rails_helper"

RSpec.describe ErrorMessagesComponent, type: :component do
  it "renders nothing when the record has no errors" do
    render_inline(described_class.new(record: Location.new(name: "Valid")))

    expect(rendered_content).to be_blank
  end

  it "lists each validation error" do
    location = Location.new
    location.errors.add(:name, :blank)
    location.errors.add(:building_name, :blank)

    result = render_inline(described_class.new(record: location))

    expect(result.css(".alert-danger h2").text).to include("2 errors prohibited this location from being saved")
    expect(result.css("li").map(&:text)).to contain_exactly("Name can't be blank", "Building name can't be blank")
  end
end
