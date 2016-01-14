json.array!(@material_expenses) do |material_expense|
  json.extract! material_expense, :id, :project_id, :contractor_id, :description, :unit, :quantity, :price
  json.url material_expense_url(material_expense, format: :json)
end
