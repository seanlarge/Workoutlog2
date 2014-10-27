json.array!(@wods) do |wod|
  json.extract! wod, :id, :pr, :score, :benchmark
  json.url wod_url(wod, format: :json)
end
