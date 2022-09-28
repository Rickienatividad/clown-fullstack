class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
    render template: "bookings/index"
  end

  def new
    @booking = Booking.new
    render template: "bookings/new"
  end

  def create
    @booking = Booking.new(
      user_id: params["user_id"],
      clown_id: params["clown_id"],
      hours: params["hours"],
    )
    if @booking.save
      redirect_to @booking
    else
      puts @booking.errors.full_messages
      render :new
    end
  end

  def show
    @booking = Booking.find_by(id: params["id"])
    render template: "bookings/show"
  end
end
