json.array!(@petty_cashes) do |petty_cash|
  json.extract! petty_cash, :id, :cash_on_hand
  json.url petty_cash_url(petty_cash, format: :json)
end
