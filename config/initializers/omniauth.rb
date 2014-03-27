Rails.application.config.middleware.use OmniAuth::Builder do

  provider :twitter, ENV["TWEET_APP_KEY"], ENV["TWEET_APP_SECRET"],
  {
    :authorize_params => {
      :use_authorize => 'true'
    }
  }
  provider :instagram, ENV['INSTAGRAM_CLIENT_ID'], ENV['INSTAGRAM_CLIENT_SECRET']

end