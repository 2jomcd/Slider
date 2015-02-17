require 'rails_helper'

RSpec.describe "photos/index", :type => :view do
  before(:each) do
    assign(:photos, [
      Photo.create!(
        :name => "Name",
        :UUID => "Uuid",
        :favorite => false
      ),
      Photo.create!(
        :name => "Name",
        :UUID => "Uuid",
        :favorite => false
      )
    ])
  end

  it "renders a list of photos" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Uuid".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
