module LocationsHelper
  def nearby_locations(zip)
    
    art_grabber(params = "geometry=#{zip}")
  end
end
