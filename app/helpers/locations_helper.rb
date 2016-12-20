module LocationsHelper
  def nearby_locations(zip)
    art_grabber("geometry=#{zip}")
  end
end
