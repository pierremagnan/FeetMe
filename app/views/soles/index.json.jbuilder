json.array!(@soles) do |sole|
  json.extract! sole, :id, :left, :activated
  json.url sole_url(sole, format: :json)
end
