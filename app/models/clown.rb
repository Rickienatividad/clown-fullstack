class Clown < ApplicationRecord
  has_many :bookings
  has_many :users, through: :bookings
  has_many :clown_images

end
