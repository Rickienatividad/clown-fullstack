class BookingsController < ApplicationController
  def index
    @booking = Booking.all
    render template: "bookings/index"
  end

  def create
    booking = Booking.new(
      user_id: params["user_id"],
      clown_id: params["clown_id"],
      hours: params["hours"],
      total_price: params["total_price"],
    )
    booking.save
    render template: "bookings/new"
  end
end
