json.array!(@equipment) do |equipment|
  json.extract! equipment, :id, :description, :plate_number, :project_id
  json.url equipment_url(equipment, format: :json)
end
