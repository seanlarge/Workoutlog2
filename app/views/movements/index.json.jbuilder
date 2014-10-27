json.array!(@movements) do |movement|
  json.extract! movement, :id, :name, :description, :equipment
  json.url movement_url(movement, format: :json)
end
