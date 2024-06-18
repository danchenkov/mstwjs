json.extract! trip, :id, :name, :description, :start_date, :end_date, :image_name, :slug, :tag_line, :price, :location, :activity, :created_at, :updated_at
json.url trip_url(trip, format: :json)
