require 'rails_helper'

RSpec.describe "spaces/edit", type: :view do
  before(:each) do
    @space = assign(:space, Space.create!(
      title: "MyString",
      size: "MyString",
      description: "MyText",
      img_url: "MyString"
    ))
  end

  it "renders the edit space form" do
    render

    assert_select "form[action=?][method=?]", space_path(@space), "post" do

      assert_select "input[name=?]", "space[title]"

      assert_select "input[name=?]", "space[size]"

      assert_select "textarea[name=?]", "space[description]"

      assert_select "input[name=?]", "space[img_url]"
    end
  end
end
