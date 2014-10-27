json.array!(@athletes) do |athlete|
  json.extract! athlete, :id, :age, :height, :weight, :body_mass_index, :blood_pressure, :cholesterol
  json.url athlete_url(athlete, format: :json)
end
