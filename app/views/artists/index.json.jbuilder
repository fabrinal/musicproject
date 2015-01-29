json.array!(@artists) do |artist|
  json.extract! artist, :id, :artist_name, :artist_image, :website_link, :albums_id, :songs_id, :performances
  json.url artist_url(artist, format: :json)
end
