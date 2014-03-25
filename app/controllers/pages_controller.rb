require 'simple-rss'
require 'open-uri'

class PagesController < ApplicationController


  def index
    # @data = @client.user_timeline(current_user.twitter)
  end

  def tweets
    client = Twitter::REST::Client.new do |config|
      config.consumer_key = "bOwOoiqzjlE56CtThcYQ"
      config.consumer_secret = "1pd0CmGWsSZzxnidBgTjVmg5yUn7CwGBAyaYJnDdik"
      config.access_token = current_user.twittertoken
      config.access_token_secret = current_user.twittersecret
    end

    @tweets = client.home_timeline
    render :json => @tweets
  end

  def pins
    @rss = SimpleRSS.parse open("http://www.pinterest.com/#{current_user.pinterest}/feed.rss")
    render :json => @rss
  end

end
