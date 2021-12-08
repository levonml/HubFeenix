require 'rails_helper'

RSpec.describe "spaces/index", type: :view do
  before(:each) do
    assign(:spaces, [
      Space.create!(
        title: "Title",
        size: "Size",
        description: "MyText",
        img_url: "Img Url"
      ),
      Space.create!(
        title: "Title",
        size: "Size",
        description: "MyText",
        img_url: "Img Url"
      )
    ])
  end

  it "renders a list of spaces" do
    render
    assert_select "tr>td", text: "Title".to_s, count: 2
    assert_select "tr>td", text: "Size".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: "Img Url".to_s, count: 2
  end
end
