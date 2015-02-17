require 'rails_helper'

RSpec.describe "photos/new", :type => :view do
  before(:each) do
    assign(:photo, Photo.new(
      :name => "MyString",
      :UUID => "MyString",
      :favorite => false
    ))
  end

  it "renders new photo form" do
    render

    assert_select "form[action=?][method=?]", photos_path, "post" do

      assert_select "input#photo_name[name=?]", "photo[name]"

      assert_select "input#photo_UUID[name=?]", "photo[UUID]"

      assert_select "input#photo_favorite[name=?]", "photo[favorite]"
    end
  end
end
