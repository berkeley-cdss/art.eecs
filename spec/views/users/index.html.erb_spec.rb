require 'rails_helper'

RSpec.describe "users/index", type: :view do
  before(:each) do
    assign(:users, [
      User.create!(
        email: "user1@example.com",
        name: "Name",
        is_admin: false,
        is_moderator: false,
        is_published: false,
        bio: nil,
        url: "Url",
        profile_image: nil,
        image_url: "https://example.com/avatar.png"
      ),
      User.create!(
        email: "user2@example.com",
        name: "Name",
        is_admin: false,
        is_moderator: false,
        is_published: false,
        bio: nil,
        url: "Url",
        profile_image: nil,
        image_url: "https://example.com/avatar.png"
      )
    ])
  end

  it "renders a list of users" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new("user[12]@example.com"), count: 2
    assert_select cell_selector, text: Regexp.new("Name"), count: 2
    # Three boolean attributes are rendered per user.
    assert_select cell_selector, text: Regexp.new(false.to_s), count: 6
    assert_select cell_selector, text: Regexp.new("Url"), count: 2
    assert_select cell_selector, text: Regexp.new("avatar.png"), count: 2
  end
end
