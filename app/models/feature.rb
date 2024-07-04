class Feature < ApplicationRecord
  has_many :flat_features
  has_many :flats, through: :flat_features
end
