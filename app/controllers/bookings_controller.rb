class BookingsController < ApplicationController

  def create
    raise
    @booking = Booking.new(booking_params)
    @flat = Flat.find(params[:flat_id])
    @booking.flat = @flat
    @booking.user = current_user
    if @booking.save
     redirect_to flats_path # it create a new GET request
    else
     render "flats/show", status: :unprocessable_entity # here there is no request to the server, the reques here is in the application
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:check_in, :check_out)
  end
end
