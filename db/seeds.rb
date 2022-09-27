user = User.create(
  email: "bob@test.com",
  password: "password",
  password_confirmation: "password",
)

user = User.create(
  email: "jan@test.com",
  password: "password",
  password_confirmation: "password",
)

user = User.create(
  email: "fred@test.com",
  password: "password",
  password_confirmation: "password",
)

#clowns
clown = Clown.create(
  name: "sadface sillypants",
  rate: 85,
)

clown = Clown.create(
  name: "bobo bignose",
  rate: 90,
)

clown = Clown.create(
  name: "weepy",
  rate: 70,
)

clown = Clown.create(
  name: "dumpy",
  rate: 75,
)

#Bookings
booking = Booking.create(
  user_id: 1,
  clown_id: 1,
  hours: 2,
  total_price: 170,
)

booking = Booking.create(
  user_id: 1,
  clown_id: 2,
  hours: 1,
  total_price: 90,
)

booking = Booking.create(
  user_id: 2,
  clown_id: 3,
  hours: 2,
  total_price: 140,
)

booking = Booking.create(
  user_id: 3,
  clown_id: 2,
  hours: 3,
  total_price: 270,
)

booking = Booking.create(
  user_id: 2,
  clown_id: 4,
  hours: 1,
  total_price: 75,
)
