json.array!(@songs) do |song|
  json.extract! song, :id, :song_title, :artist_id_id, :album_id_id
  json.url song_url(song, format: :json)
end
