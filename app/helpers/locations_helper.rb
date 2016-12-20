module LocationsHelper
  def nearby_locations(zip)
    art_grabber("geometry=#{zip}")
  end

  def nearby_parking(string, dist)
    area = string.to_s
    area = area.split(":").last[1..-3].split(",")
    querry = "$where=within_circle(location_1, #{area[1]}, #{area[0]}, #{dist})"
    parking_grabber(querry)
  end

  def google_maps_link(address)
    link_to("Directions", "http://maps.google.com/?q=#{address}, San Francisco, CA")
  end

  def google_maps_lat_long(area)
    area = area.split(":").last[1..-3].split(",")
    link_to("Directions", "http://www.google.com/maps/place/#{area[1]},#{area[0]}")
  end
end
