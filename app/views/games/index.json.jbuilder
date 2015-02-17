json.array!(@games) do |game|
  json.extract! game, :id, :photo, :rec_moves, :rec_secs, :integer
  json.url game_url(game, format: :json)
end
