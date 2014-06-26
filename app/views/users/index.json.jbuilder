json.array!(@users) do |user|
  json.extract! user, :id, :user_name, :email, :first_name, :last_name, :location
  json.url user_url(user, format: :json)
end
