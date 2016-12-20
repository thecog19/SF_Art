class LocationsController < ApplicationController

  def show
    @location = art_grabber("_id_=#{params[:id]}")
  end

  def index
    @locations = art_grabber
  end
end
