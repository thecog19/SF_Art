require "httparty"
class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def art_grabber(params = "")
    token = ENV["XTOKEN"]
    data = HTTParty.get("https://data.sfgov.org/resource/bm46-8iwk.json?#{params}",  
      :headers => {'X-App-Token' => token }
      )
  end
 helper_method :art_grabber
end
