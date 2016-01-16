json.array!(@petty_cash_particulars) do |petty_cash_particular|
  json.extract! petty_cash_particular, :id, :particular, :quantity, :unit, :amount, :petty_cash_id
  json.url petty_cash_particular_url(petty_cash_particular, format: :json)
end
