json.extract! purchase, :id, :user_id, :trip_id, :pay_type, :purchase_date, :real_travel_date, :amount, :created_at, :updated_at
json.url purchase_url(purchase, format: :json)
