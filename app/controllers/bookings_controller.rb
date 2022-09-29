class BookingsController < ApplicationController
  before_action :authenticate_user

  def index
    # @bookings = Booking.all
    @bookings = Booking.where(user_id: current_user.id)
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
