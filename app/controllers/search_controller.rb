class SearchController < ApplicationController

  def index
    title = "%25#{params[:query][:title]}%25"
    artist = "%25#{params[:query][:artist]}%25"
    location = "%25#{params[:query][:location_description]}%25"
    @results = art_grabber("$where=title like '#{title}' AND artist like '#{artist}' AND location_description like '#{location}'")
  end

end

