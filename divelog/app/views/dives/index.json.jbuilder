json.array!(@dives) do |dive|
  json.extract! dive, :id, :dive_number, :depth, :pressure_group, :weight
  json.url dive_url(dive, format: :json)
end
