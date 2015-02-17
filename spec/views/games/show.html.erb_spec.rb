require 'rails_helper'

RSpec.describe "games/show", :type => :view do
  before(:each) do
    @game = assign(:game, Game.create!(
      :photo => "Photo",
      :rec_moves => 1,
      :rec_secs => "Rec Secs",
      :integer => "Integer"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Photo/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Rec Secs/)
    expect(rendered).to match(/Integer/)
  end
end
