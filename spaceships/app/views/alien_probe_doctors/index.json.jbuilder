json.array!(@alien_probe_doctors) do |alien_probe_doctor|
  json.extract! alien_probe_doctor, :id, :name
  json.url alien_probe_doctor_url(alien_probe_doctor, format: :json)
end
