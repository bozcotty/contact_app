json.array!(@spaceships) do |spaceship|
  json.extract! spaceship, :id, :surgery_date
  json.url spaceship_url(spaceship, format: :json)
end
