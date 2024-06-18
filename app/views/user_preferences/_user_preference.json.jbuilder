json.extract! user_preference, :id, :user_id, :kind, :name, :description, :created_at, :updated_at
json.url user_preference_url(user_preference, format: :json)
