json.array!(@photos) do |photo|
  json.extract! photo, :id, :name, :UUID, :favorite
  json.url photo_url(photo, format: :json)
end
