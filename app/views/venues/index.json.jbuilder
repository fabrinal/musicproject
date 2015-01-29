json.array!(@venues) do |venue|
  json.extract! venue, :id, :venue_name, :location, :contact_info, :parking, :venue_capacity, :venue_image
  json.url venue_url(venue, format: :json)
end
