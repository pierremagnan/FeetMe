json.array!(@pins) do |pin|
  json.extract! pin, :id, :left, :coords, :values
  json.url pin_url(pin, format: :json)
end
