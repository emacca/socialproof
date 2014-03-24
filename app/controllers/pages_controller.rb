require 'simple-rss'
require 'open-uri'
require 'instagram'


class PagesController < ApplicationController


  def index
  end

  def tweets
    client = Twitter::REST::Client.new do |config|
      config.consumer_key = "bOwOoiqzjlE56CtThcYQ"
      config.consumer_secret = "1pd0CmGWsSZzxnidBgTjVmg5yUn7CwGBAyaYJnDdik"
      config.access_token = "2278255818-gJb4PfUOVuJDeryfa8xNovArc2bxbfZozAhv80Q"
      config.access_token_secret = "56Jy1uA01qJLsOyTUOmgpF9AQKOEtG4yVkyj4WFB2NCIT"
    end

    @tweets = client.home_timeline
    render :json => @tweets
  end

  def pins
    @rss = SimpleRSS.parse open("http://www.pinterest.com/#{current_user.pinterest}/feed.rss")
    render :json => @rss
  end



end
