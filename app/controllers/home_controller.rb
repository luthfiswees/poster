require 'net/http'
require 'byebug'

class HomeController < ApplicationController
  def index
  end

  def start_poster
    authenticate
    render 'start_poster'
  end

  def authenticate
    puts "Authenticating your credentials"

    @api_key = ENV['LAST_FM_API_KEY']
    @api_secret = ENV['LAST_FM_API_SECRET']
    endpoint = "#{Rails.root}/home/start_poster"

    byebug
    uri = "http://www.last.fm/api/auth/?api_key=#{@api_key}"

    url = URI.parse uri

    puts "Sending message to the Last FM API"
    req = Net::HTTP::Get.new url.to_s
    res = Net::HTTP.start(url.host, url.port) {|http|
      http.request(req)
    }

    puts "#{res.body} \n \n"
    puts "Done"
  end
end
