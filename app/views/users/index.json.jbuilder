json.array!(@users) do |user|
  json.extract! user, :id, :user_id, :username, :name, :address, :email, :password_digest, :contact_name, :contact_title, :phone, :user_type
  json.url user_url(user, format: :json)
end
