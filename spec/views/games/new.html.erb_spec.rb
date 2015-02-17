require 'rails_helper'

RSpec.describe "games/new", :type => :view do
  before(:each) do
    assign(:game, Game.new(
      :photo => "MyString",
      :rec_moves => 1,
      :rec_secs => "MyString",
      :integer => "MyString"
    ))
  end

  it "renders new game form" do
    render

    assert_select "form[action=?][method=?]", games_path, "post" do

      assert_select "input#game_photo[name=?]", "game[photo]"

      assert_select "input#game_rec_moves[name=?]", "game[rec_moves]"

      assert_select "input#game_rec_secs[name=?]", "game[rec_secs]"

      assert_select "input#game_integer[name=?]", "game[integer]"
    end
  end
end
