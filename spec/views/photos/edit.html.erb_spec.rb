require 'rails_helper'

RSpec.describe "photos/edit", :type => :view do
  before(:each) do
    @photo = assign(:photo, Photo.create!(
      :name => "MyString",
      :UUID => "MyString",
      :favorite => false
    ))
  end

  it "renders the edit photo form" do
    render

    assert_select "form[action=?][method=?]", photo_path(@photo), "post" do

      assert_select "input#photo_name[name=?]", "photo[name]"

      assert_select "input#photo_UUID[name=?]", "photo[UUID]"

      assert_select "input#photo_favorite[name=?]", "photo[favorite]"
    end
  end
end
