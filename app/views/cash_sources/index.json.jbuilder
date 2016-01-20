json.array!(@cash_sources) do |cash_source|
  json.extract! cash_source, :id, :amount, :petty_cash_id
  json.url cash_source_url(cash_source, format: :json)
end
