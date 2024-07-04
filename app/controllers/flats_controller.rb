class FlatsController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @flats = Flat.all
  end

  def show
    @booking = Booking.new
    @flat = Flat.find(params[:id])
  end


end
