json.array!(@bid_expenses) do |bid_expense|
  json.extract! bid_expense, :id, :description
  json.url bid_expense_url(bid_expense, format: :json)
end
