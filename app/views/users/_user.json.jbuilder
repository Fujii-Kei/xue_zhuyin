json.extract! user, :id, :name, :email, :crypted_password, :salt, :role, :created_at, :updated_at
json.url user_url(user, format: :json)
