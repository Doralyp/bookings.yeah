class Hotel < ActiveRecord::Base
  has_many :rooms
  has_many :bookings, through: :rooms
  has_many :guests, through: :rooms
  has_many :booked_guests, through: :bookings, source: :guest
end
