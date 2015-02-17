require 'rails_helper'

RSpec.describe "games/edit", :type => :view do
  before(:each) do
    @game = assign(:game, Game.create!(
      :photo => "MyString",
      :rec_moves => 1,
      :rec_secs => "MyString",
      :integer => "MyString"
    ))
  end

  it "renders the edit game form" do
    render

    assert_select "form[action=?][method=?]", game_path(@game), "post" do

      assert_select "input#game_photo[name=?]", "game[photo]"

      assert_select "input#game_rec_moves[name=?]", "game[rec_moves]"

      assert_select "input#game_rec_secs[name=?]", "game[rec_secs]"

      assert_select "input#game_integer[name=?]", "game[integer]"
    end
  end
end
