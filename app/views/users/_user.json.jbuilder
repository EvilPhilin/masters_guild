json.extract! user, :id, :email, :password, :username, :master_id, :created_at, :updated_at
json.url user_url(user, format: :json)
