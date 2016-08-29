require 'net/http'
require 'byebug'

class HomeController < ApplicationController
  def index
  end

  def get_poster
    authenticate
  end

  def start_poster
  end

  def authenticate
    puts "Authenticating your credentials"

    @api_key = ENV['LAST_FM_API_KEY']
    @api_secret = ENV['LAST_FM_API_SECRET']
    endpoint = ENV['LAST_FM_ENDPOINT']

    redirect_to "http://www.last.fm/api/auth/?api_key=#{@api_key}?cb=#{endpoint}"

    puts "Done"
  end
end
