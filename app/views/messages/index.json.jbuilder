json.array!(@messages) do |message|
  json.extract! message, :id, :alert, :message
  json.url message_url(message, format: :json)
end
