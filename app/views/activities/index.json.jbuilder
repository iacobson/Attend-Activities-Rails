json.array!(@activities) do |activity|
  json.extract! activity, :id, :description, :User_id
  json.url activity_url(activity, format: :json)
end
