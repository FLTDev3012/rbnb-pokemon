class BookingsController < ApplicationController
  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @garage = Garage.find(params[:garage_id])
    @booking.garage = @garage
    @booking.status = "pending"
    authorize @booking
    if @booking.save
      flash[:success] = "Réservation créée avec succès !"
      redirect_to dashboard_path
    else
      render :action => 'new'
    end
  end

  def accepted
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.status = "accepted"
    @booking.save
    redirect_to dashboard_path
  end

  def refused
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.status = "refused"
    @booking.save
    redirect_to dashboard_path
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :user_id)
  end
end
