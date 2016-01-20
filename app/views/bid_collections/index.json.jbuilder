json.array!(@bid_collections) do |bid_collection|
  json.extract! bid_collection, :id, :bid_amount_id, :billing_name, :amount
  json.url bid_collection_url(bid_collection, format: :json)
end
