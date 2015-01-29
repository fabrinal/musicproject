json.array!(@fans) do |fan|
  json.extract! fan, :id, :first_name, :user_name, :password, :city, :zip_code, :user_type
  json.url fan_url(fan, format: :json)
end
