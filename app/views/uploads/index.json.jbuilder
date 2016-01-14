json.array!(@uploads) do |upload|
  json.extract! upload, :id, :project_id
  json.url upload_url(upload, format: :json)
end
