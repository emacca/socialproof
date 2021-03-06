require 'simple-rss'
require 'open-uri'
require "instagram"

class PagesController < ApplicationController


  def index
    @user = current_user
    # @data = @client.user_timeline(current_user.twitter)
  end

  def tweets
    client = Twitter::REST::Client.new do |config|
      config.consumer_key = ENV["TWEET_APP_KEY"]
      config.consumer_secret = ENV["TWEET_APP_SECRET"]
      config.access_token = current_user.twittertoken
      config.access_token_secret = current_user.twittersecret
    end

    @tweets = client.home_timeline
    render :json => @tweets
  end

  # def pins
  #   @rss = SimpleRSS.parse open("http://www.pinterest.com/#{current_user.pinterest}/feed.rss")
  #   render :json => @rss
  # end

  def grams 
    url = 'https://api.instagram.com/v1/users/self/feed?access_token=' + current_user.instagramtoken
    @list = HTTParty.get(url) 
    @gram = @list.parsed_response["data"].first
    @gram["images"]["thumbnail"]["url"]
    render :json => @list
  end

end
