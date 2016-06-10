class LocationsController < ApplicationController



  def new
    # @profile = current_user.profile
    @location = Location.new
  end

  def create
    @user = current_user
    @profile = current_user.profile
    # binding.pry
    if params[:profile]
      @profile.build_location(location_params).save
      flash[:notice] = "Success"
      redirect_to profile_path(@user)
    # elsif params[:teacher]
    #   redirect_to root_path
    else
      redirect_to home_path
    end
  end

  private
  def location_params
    params.require(:location).permit(:address)
  end
end
