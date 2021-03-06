# Creates users
10.times do
  User.create!(name: Faker::Name.name)
end

# Creates hotels
hotels = []
10.times do
  hotels << Hotel.create!(name: Faker::Company.name)
end

# Creates rooms for each hotel
hotels.each_with_index do |hotel, index|
  20.times do
    Room.create!(rate: Faker::Commerce.price, number: Faker::Number.digit , hotel_id: hotel.id )
  end
end

# Creates bookings
5000.times do
  Booking.create!(guest_id: rand(1..8) , room_id: rand(1..200) )
end