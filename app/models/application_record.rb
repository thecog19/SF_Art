require "httparty"

class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def art_grabber
    token = "m1Ew0X6cvBMTQdXwlzbgQP8E4"
    data = HTTParty.get("https://data.sfgov.org/resource/bm46-8iwk.json",  
      :headers => {'X-App-Token' => token }
      )
  end


end
