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

 def parking_grabber(params)
    token = ENV["XTOKEN"]
    data = HTTParty.get("https://data.sfgov.org/resource/4vvz-yypg.json?#{params}",  
      :headers => {'X-App-Token' => token }
      )
  end
 helper_method :parking_grabber

 #this would work if they didn't have a database error at the API level. 
 def bike_grabber(params="")
    token = ENV["XTOKEN"]
    data = HTTParty.get("https://data.sfgov.org/resource/dd7x-3h4a.json?#{params}",  
      :headers => {'X-App-Token' => token },
      )
  end
 helper_method :bike_grabber

  def disabled_grabber(params="")
    token = ENV["XTOKEN"]
    data = HTTParty.get("https://data.sfgov.org/resource/76ec-bw8s.json?#{params}",  
      :headers => {'X-App-Token' => token },
      )
  end
 helper_method :disabled_grabber
end
