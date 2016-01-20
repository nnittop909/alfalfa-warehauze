json.array!(@particulars) do |particular|
  json.extract! particular, :id, :petty_cash_id, :description, :amount
  json.url particular_url(particular, format: :json)
end
