require 'rails_helper'

RSpec.describe "games/index", :type => :view do
  before(:each) do
    assign(:games, [
      Game.create!(
        :photo => "Photo",
        :rec_moves => 1,
        :rec_secs => "Rec Secs",
        :integer => "Integer"
      ),
      Game.create!(
        :photo => "Photo",
        :rec_moves => 1,
        :rec_secs => "Rec Secs",
        :integer => "Integer"
      )
    ])
  end

  it "renders a list of games" do
    render
    assert_select "tr>td", :text => "Photo".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Rec Secs".to_s, :count => 2
    assert_select "tr>td", :text => "Integer".to_s, :count => 2
  end
end
