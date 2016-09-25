json.array!(@showcars) do |showcar|
  json.extract! showcar, :id, :name, :description, :photo_link
  json.url showcar_url(showcar, format: :json)
end
