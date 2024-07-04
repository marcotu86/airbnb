class DashboardController < ApplicationController

  def index
    @bookings = Booking.where(user: current_user)
  end
end
