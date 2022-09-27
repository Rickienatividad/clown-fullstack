class User < ApplicationRecord
  has_secure_password
  has_many :bookings
  has_many :clowns, through: :bookings
end
