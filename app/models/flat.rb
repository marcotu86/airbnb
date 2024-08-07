class Flat < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :flat_features
  has_many :features, through: :flat_features
end
