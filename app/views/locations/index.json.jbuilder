json.array!(@locations) do |location|
  json.extract! location, :id, :street, :brangay, :municipality, :province
  json.url location_url(location, format: :json)
end
