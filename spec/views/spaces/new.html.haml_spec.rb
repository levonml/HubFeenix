require 'rails_helper'

RSpec.describe "spaces/new", type: :view do
  before(:each) do
    assign(:space, Space.new(
      title: "MyString",
      size: "MyString",
      description: "MyText",
      img_url: "MyString"
    ))
  end

  it "renders new space form" do
    render

    assert_select "form[action=?][method=?]", spaces_path, "post" do

      assert_select "input[name=?]", "space[title]"

      assert_select "input[name=?]", "space[size]"

      assert_select "textarea[name=?]", "space[description]"

      assert_select "input[name=?]", "space[img_url]"
    end
  end
end
