json.array!(@schedules) do |schedule|
  json.extract! schedule, :id, :project_id, :equipment_id, :status, :starting_date, :end_date
  json.url schedule_url(schedule, format: :json)
end
