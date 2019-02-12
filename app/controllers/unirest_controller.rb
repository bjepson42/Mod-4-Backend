
  require "byebug"
  class UnirestController < ApplicationController

    def fetch
      # response = Unirest.get "https://musixmatchcom-musixmatch.p.rapidapi.com/wsr/1.1/track.search?q_track=paradise&q_track_artist=paradise+coldplay&page_size=5&page=1",
      #   headers:{
      #     "X-RapidAPI-Key" => "228ddf9fdfmsh4e1d0f24954da3ap1a7372jsnbe9d54c789fd"
      #   }
    end
  end
