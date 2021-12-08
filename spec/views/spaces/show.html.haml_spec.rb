require 'rails_helper'

RSpec.describe "spaces/show", type: :view do
  before(:each) do
    @space = assign(:space, Space.create!(
      title: "Title",
      size: "Size",
      description: "MyText",
      img_url: "Img Url"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Size/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Img Url/)
  end
end
