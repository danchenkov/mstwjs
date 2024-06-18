json.extract! trip_feature, :id, :trip_id, :kind, :slug, :description, :created_at, :updated_at
json.url trip_feature_url(trip_feature, format: :json)
