json.array!(@users) do |user|
  json.extract! user, :id, :username, :email, :first_name, :last_name
  json.avatar_url attachment_url(user, :avatar)
  json.avatar_thumbnail_url attachment_url(user, :avatar, :fill, 100, 100)
end
