module BookingsHelper
  def total
    @booking.clown.rate * @booking.hours
  end
end
