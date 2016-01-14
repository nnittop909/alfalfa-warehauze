json.array!(@equipment_expenses) do |equipment_expense|
  json.extract! equipment_expense, :id, :category, :amount, :equipment_id
  json.url equipment_expense_url(equipment_expense, format: :json)
end
