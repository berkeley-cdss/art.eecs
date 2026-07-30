require 'rails_helper'

RSpec.describe "art/new", type: :view do
  before(:each) do
    assign(:art, build(:art))
  end

  it "renders new art form" do
    render

    assert_select "form[action=?][method=?]", art_index_path, "post" do

      assert_select "input[name=?]", "art[title]"

      assert_select "lexxy-editor[name=?]", "art[description]"

      assert_select "textarea[name=?]", "art[artist_name]"

      assert_select "input[name=?]", "art[last_editor_id]"

      assert_select "input[name=?]", "art[created_location]"

      assert_select "input[name=?]", "art[url]"

      assert_select "input[name=?]", "art[image]"

      assert_select "input[name=?]", "art[classification]"

      assert_select "input[name=?]", "art[is_published]"

      assert_select "input[name=?]", "art[location_id]"

      assert_select "input[name=?]", "art[artist_id]"
    end
  end
end
