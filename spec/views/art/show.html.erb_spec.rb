require 'rails_helper'

RSpec.describe "art/show", type: :view do
  before(:each) do
    assign(:art, create(:art))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Created Location/)
    expect(rendered).to match(/Url/)
    expect(rendered).to match(/Classification/)
    expect(rendered).to match(/false/)
  end
end
