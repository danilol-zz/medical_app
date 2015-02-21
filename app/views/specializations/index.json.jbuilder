json.array!(@specializations) do |specialization|
  json.extract! specialization, :id, :description
  json.url specialization_url(specialization, format: :json)
end
