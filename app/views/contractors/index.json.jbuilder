json.array!(@contractors) do |contractor|
  json.extract! contractor, :id, :first_name, :last_name, :company, :position
  json.url contractor_url(contractor, format: :json)
end
