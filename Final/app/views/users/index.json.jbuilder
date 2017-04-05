json.array!(@users) do |user|
  json.extract! user, :id, :login, :password, :x, :y
  json.url user_url(user, format: :json)
end
