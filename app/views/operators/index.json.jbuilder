json.array!(@operators) do |operator|
  json.extract! operator, :id, :equipment_id, :first_name, :last_name
  json.url operator_url(operator, format: :json)
end
