json.array!(@bidders) do |bidder|
  json.extract! bidder, :id, :name
  json.url bidder_url(bidder, format: :json)
end
