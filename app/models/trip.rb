class Trip < ApplicationRecord
  has_many :purchases
  has_many :trip_features
end
