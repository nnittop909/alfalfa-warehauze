json.array!(@materials) do |material|
  json.extract! material, :id, :description, :unit, :price, :quantity, :status
  json.url material_url(material, format: :json)
end
