json.array!(@users) do |user|
  json.extract! user, :id, :email, :password_admin, :password_view, :birthyear, :gender, :size, :feetsize, :weight
  json.url user_url(user, format: :json)
end
