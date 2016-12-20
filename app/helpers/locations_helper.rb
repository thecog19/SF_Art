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

  #this would work if they didn't have a database error at the API level. 
  def nearby_bike_parking(string, dist)
    area = process_coords(area)
    querry = "$where=within_circle(geom, #{area[1]}, #{area[0]}, #{dist})"
    parking_grabber(querry)
  end

  def google_maps_link(address)
    link_to("Directions", "http://maps.google.com/?q=#{address}, San Francisco, CA")
  end

  def google_maps_lat_long(area)
    area = process_coords(area)
    link_to("Directions", "http://www.google.com/maps/place/#{area[1]},#{area[0]}")
  end

  def static_map(bookmark_list)
    string = "https://maps.googleapis.com/maps/api/staticmap?center=The+Castro,San+Francisco,CA&zoom=12&size=500x500&maptype=roadmap"
    counter = 1
    bookmark_list.bookmarks.each do |bookmark|
      coords = process_coords(bookmark.coords)
      string += "&markers=color:red%7Clabel:#{counter}%7C#{coords[1]},#{coords[0]}"
      counter += 1
    end
    string += "&key=#{ENV["GTOKEN"]}"
  end

  def process_coords(coords)
    coords.split(":").last[1..-3].split(",")
  end
end
