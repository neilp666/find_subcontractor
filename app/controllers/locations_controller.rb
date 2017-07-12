class LocationsController < ApplicationController
  def index
    @locations = Location.order('created_at DESC')
  end

  def new
    @location = Location.new
  end

  def create
    @location = Location.new(location_params)
    if @location.save
      flash[:success] = "Place added!"
      redirect_to root_path
    else
      render 'new'
    end
  end

  private

  def location_params
    params.require(:location).permit(:company_name, :address, :city,
                                    :postcode, :latitude, :longitude)
  end
end
