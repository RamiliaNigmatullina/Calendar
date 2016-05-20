json.array!(@meetings) do |meeting|
  json.extract! meeting, :id, :name, :start_time, :end_time, :description
  json.url meeting_url(meeting, format: :json)
end
