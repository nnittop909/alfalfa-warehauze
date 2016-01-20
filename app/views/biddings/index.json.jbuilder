json.array!(@biddings) do |bidding|
  json.extract! bidding, :id, :project_id, :bid_expense_id
  json.url bidding_url(bidding, format: :json)
end
