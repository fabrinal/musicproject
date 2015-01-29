json.array!(@performances) do |performance|
  json.extract! performance, :id, :performance_name, :performance_artist, :performance_venue, :performance_date
  json.url performance_url(performance, format: :json)
end
