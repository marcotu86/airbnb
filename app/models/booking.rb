class Booking < ApplicationRecord
  enum :status, [:pending, :accepted, :declined]
  # {"pending"=>0, "accepted"=>1, "declined"=>2}  to have control over the number
  belongs_to :user
  belongs_to :flat
  has_many :reviews
end
