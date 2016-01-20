json.array!(@bidder_amounts) do |bidder_amount|
  json.extract! bidder_amount, :id, :amount
  json.url bidder_amount_url(bidder_amount, format: :json)
end
