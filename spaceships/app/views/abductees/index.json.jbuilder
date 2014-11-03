json.array!(@abductees) do |abductee|
  json.extract! abductee, :id, :name
  json.url abductee_url(abductee, format: :json)
end
