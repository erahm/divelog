json.array!(@dives) do |dive|
  json.extract! dive, :id, :dive_number, :depth, :starting_pressure_group, :ending_pressure_group, :weight, :dive_time
  json.url dive_url(dive, format: :json)
end
